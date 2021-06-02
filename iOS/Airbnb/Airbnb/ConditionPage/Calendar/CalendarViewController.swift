//
//  CalendarViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/25.
//

import UIKit

class CalendarViewController: UIViewController {
    
    static let headerElementKind = "header-element-kind"
    
    private var calendarViewModel = CalendarViewModel()
    private var conditionViewModel = ConditionViewModel()
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Date, Day>!
    private var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureDataSource()
        configureContainer()
        configureNavigation()
        configureToolBar()
        applySnapshots()
    }
    
}

//MARK:- Layout & DataSource

extension CalendarViewController {
    
    private func configureHierarchy() {
        let frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.width, height: view.frame.height - 250)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.allowsMultipleSelection = true
        view.addSubview(collectionView)
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            // section
            let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            let trailingGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(
                                                                   widthDimension: .fractionalWidth(1),
                                                                   heightDimension: .fractionalWidth(1/7)),
                                                                   subitem: item, count: 7)
            trailingGroup.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 0, bottom: 0, trailing: 0)
            let containerGroup = NSCollectionLayoutGroup.vertical(
                layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                   heightDimension: .fractionalHeight(0.5)),
                                                  subitems: [trailingGroup])
            let section = NSCollectionLayoutSection(group: containerGroup)
            
            section.interGroupSpacing = 10
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            
            // header
            self.createSectionHeaderLayout(with: section)
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func createSectionHeaderLayout(with section: NSCollectionLayoutSection) {
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .estimated(44)),
            elementKind: CalendarViewController.headerElementKind,
            alignment: .top)
        section.boundarySupplementaryItems = [sectionHeader]
    }
    
    private func configureDataSource() {
        
        let listCellRegistration = UICollectionView.CellRegistration<DayCell, Day> { (cell, indexPath, day) in
            let cellType = self.calendarViewModel.figureSelectedType(date: day.date)
            cell.fillInfo(with: day.date)
            cell.updateUI(selectedType: cellType)
        }
        
        dataSource = UICollectionViewDiffableDataSource<Date, Day>(collectionView: collectionView) {
            (collectionView, indexPath, date) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: listCellRegistration, for: indexPath, item: date)
        }
        self.configureSupplementaryView()
    }
    
    private func configureSupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <TitleSupplementaryView>(elementKind: CalendarViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
            let date = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
            supplementaryView.label.text = "\(date.year)년 \(date.month)월"
            supplementaryView.label.font = UIFont.preferredFont(forTextStyle: .headline)
        }
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
    
    private func applySnapshots() {
        var snapshot = NSDiffableDataSourceSnapshot<Date, Day>()

        let thisMonth = Date().month
        Array(thisMonth...thisMonth+6).forEach {
            let month = Calendar.current.date(from: DateComponents(year: 2021, month: $0, day: 1)) ?? Date()
            snapshot.appendSections([month])
            snapshot.appendItems(DateGenerator.getTheMonth(year: 2021, month: $0))
        }
        self.dataSource.apply(snapshot)
    }
    
}

//MARK:- Selection

extension CalendarViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? DayCell else { return }
        guard let date = cell.date else { return }

        calendarViewModel.unselect(date: date)
        let schedule = calendarViewModel.checkInOut
        conditionViewModel.updateCondition(schedule: schedule)
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? DayCell else { return }
        guard let selected = collectionView.indexPathsForSelectedItems else { return }
        guard let date = cell.date else { return }

        selected.forEach {
            collectionView.deselectItem(at: $0, animated: false)
        }

        if calendarViewModel.figureSelectedType(date: date) != .outDated {
            calendarViewModel.select(date: date)
            let schedule = calendarViewModel.checkInOut
            conditionViewModel.updateCondition(schedule: schedule)
            
            collectionView.reloadData()
            collectionView.selectItem(at: indexPath, animated: false, scrollPosition: .left)
        }
    }
    
}

extension CalendarViewController {
    private func configureContainer() {
        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            containerView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        containerView.backgroundColor = .cyan
        let vc = ConditionTableViewController(viewModel: conditionViewModel)
        self.addChild(vc)
        containerView.addSubview(vc.view)
    }
}


extension CalendarViewController {
    
    func configureToolBar() {
        self.tabBarController?.tabBar.isHidden = true
        let toolbar = UIToolbar()
        view.addSubview(toolbar)

        toolbar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        toolbar.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 0),
        toolbar.bottomAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.bottomAnchor, multiplier: 0),
        toolbar.trailingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.trailingAnchor, multiplier: 0)
        ])
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let toolbarItem1 = UIBarButtonItem(title: "건너뛰기", style: .plain, target: self, action: #selector(nextButtonPressed))
        let toolbarItem2 = UIBarButtonItem(title: "다음", style: .done, target: self, action: #selector(nextButtonPressed))

        let items = [toolbarItem1, flexibleSpace, toolbarItem2]
        items.forEach{ $0.tintColor = .black }
        
        toolbar.setItems(items, animated: true)
    }
    
    func configureNavigation() {
        self.navigationItem.title = "숙소 찾기"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    @objc func nextButtonPressed() {
        let nextVC = PriceViewController(conditionViewModel: conditionViewModel)
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
