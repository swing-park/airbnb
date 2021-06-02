//
//  ConditionTableViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/31.
//

import UIKit
import Combine

class ConditionTableViewController: UITableViewController {

    private var viewModel: ConditionViewModel
    private var dataSource: [CellInfo]
    private var cancelBag = Set<AnyCancellable>()
    
    init(viewModel: ConditionViewModel) {
        self.viewModel = viewModel
        self.dataSource = viewModel.generateFirstCondition()
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(ConditionCell.self, forCellReuseIdentifier: ConditionCell.reuseIdentifier)
        self.tableView.allowsSelection = false
        self.tableView.isScrollEnabled = false
        bind()
    }

}

// MARK: - Table view data source
    
extension ConditionTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ConditionCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConditionCell.reuseIdentifier, for: indexPath) as? ConditionCell else { return ConditionCell() }
        
        cell.fillUI(with: dataSource[indexPath.row])
        return cell
    }

}

extension ConditionTableViewController {
 
    private func bind() {
        viewModel.$schedule
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { _ in
                self.dataSource = self.viewModel.generateFirstCondition()
                self.tableView.reloadData()
            })
            .store(in: &cancelBag)
    }
}