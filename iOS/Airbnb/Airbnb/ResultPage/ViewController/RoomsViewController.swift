//
//  RoomsViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit
import Combine

class RoomsViewController: UIViewController {

    static let headerElementKind = "header-element-kind"
    
    private var mapButton: UIButton!
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Int, Room>!
    private var conditionViewModel: ConditionViewModel
    private var roomViewModel: RoomViewModel!
    private let roomsUseCase = RoomsUseCase()
    private var cancelBag = Set<AnyCancellable>()
    
    init(conditionViewModel: ConditionViewModel) {
        self.conditionViewModel = conditionViewModel
        self.roomViewModel = RoomViewModel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomsUseCase.requestPirce(condition: conditionViewModel.convertCodable())
        bind()
        
        configureNavigation()
        configureHierarchy()
        configureMapButton()
        configureDataSource()
    }

}


extension RoomsViewController {
    
    private func bind() {
        roomsUseCase.$rooms.receive(on: DispatchQueue.main)
            .sink { rooms in
                guard let rooms = rooms else { return }
                self.applySnapshots(with: rooms.rooms)
                self.updateSupplementaryView(resultNum: rooms.rooms.count)
            }
            .store(in: &cancelBag)
        
        roomsUseCase.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }
    
}


extension RoomsViewController {
    
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        view.addSubview(collectionView)
    }
    
    private func createLayout() -> UICollectionViewLayout {
        
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.interGroupSpacing = 10
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            

            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                   heightDimension: .estimated(44)),
                elementKind:RoomsViewController.headerElementKind,
                alignment: .top)
            section.boundarySupplementaryItems = [sectionHeader]
            
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Int, Room>(collectionView: collectionView) {
            (collectionView, indexPath, room) -> UICollectionViewCell? in
            
            self.collectionView.register(AccommodationCell.nib, forCellWithReuseIdentifier: AccommodationCell.reuseIdentifier)
            let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: AccommodationCell.reuseIdentifier, for: indexPath) as! AccommodationCell
            cell.fillUI(with: room)
            return cell
        }
        self.configureSupplementaryView()
    }
    
    private func configureSupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <RoomsSupplementaryView>(elementKind: RoomsViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
        }
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
    
    private func updateSupplementaryView(resultNum: Int) {
        let view = self.collectionView.supplementaryView(forElementKind: RoomsViewController.headerElementKind, at: IndexPath(row: 0, section: 0)) as? RoomsSupplementaryView
        view?.fillUI(condition: conditionViewModel.finalCondition(), resultNum: "\(resultNum)개의 숙소")
    }
    
    private func applySnapshots(with rooms: [Room]) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, Room>()
        snapshot.appendSections([1])
        snapshot.appendItems(rooms, toSection: 1)
        dataSource.apply(snapshot)
    }
    
}

extension RoomsViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let room = dataSource.itemIdentifier(for: indexPath) else { return }
        
        roomViewModel.setRoomInfo(with: room)
        
        let detailViewController = DetailRoomViewController(nibName: DetailRoomViewController.reuseIdentifier, bundle: nil)
        detailViewController.setViewModels(conditionViewModel: conditionViewModel, roomViewModel: roomViewModel)
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        
        guard let indexPath = self.collectionView.indexPathsForSelectedItems?.first else { return }
        if let coordinator = self.transitionCoordinator {
            coordinator.animate(alongsideTransition: { context in
                self.collectionView.deselectItem(at: indexPath, animated: true)
            }) { (context) in
                if context.isCancelled {
                    self.collectionView.selectItem(at: indexPath, animated: false, scrollPosition: [])
                }
            }
        } else {
            self.collectionView.deselectItem(at: indexPath, animated: animated)
        }
    }
    
}


extension RoomsViewController {
    
    private func configureNavigation() {
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "숙소 찾기"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    private func configureMapButton() {
        mapButton = UIButton()
        view.addSubview(mapButton)
        mapButton.translatesAutoresizingMaskIntoConstraints = false
        mapButton.frame = CGRect(origin: view.center, size: CGSize(width: 100, height: 30))
        mapButton.layer.masksToBounds = true
        mapButton.layer.cornerRadius = 15
        mapButton.backgroundColor = .darkGray
        mapButton.setTitle(" 지도", for: .normal)
        mapButton.setImage(UIImage(systemName: "map"), for: .normal)
        mapButton.tintColor = .white
        mapButton.setTitleColor(.white, for: .normal)
        mapButton.addTarget(self, action: #selector(mapButtonTouched), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            mapButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25),
            mapButton.heightAnchor.constraint(equalTo: mapButton.widthAnchor, multiplier: 0.4),
            mapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mapButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -110),
        ])
    }
    
    @objc func mapButtonTouched() {
        let mapViewController = MapViewController(nibName: MapViewController.reuseIdentifier, bundle: nil)
        self.navigationController?.pushViewController(mapViewController, animated: true)
    }
    
}