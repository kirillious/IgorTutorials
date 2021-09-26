//
//  HistoryViewController.swift
//  POP
//
//  Created by Kirill on 24.09.2021.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(HistoryTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        NSLayoutConstraint.activate([tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), tableView.leftAnchor.constraint(equalTo: view.leftAnchor), tableView.rightAnchor.constraint(equalTo: view.rightAnchor), tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}

extension HistoryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataBase.shared.listOfOperations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HistoryTableViewCell
        cell.historyLabel.text = "\(DataBase.shared.listOfOperations[indexPath.row].x) \(DataBase.shared.listOfOperations[indexPath.row].sign) \(DataBase.shared.listOfOperations[indexPath.row].y) = \(DataBase.shared.listOfOperations[indexPath.row].result)"
        return cell
    }
    
    
}
