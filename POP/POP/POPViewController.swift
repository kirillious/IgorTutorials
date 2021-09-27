//
//  POPViewController.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import UIKit



class POPViewController: UIViewController {
    
    let viewModel = ViewModel()
    var view1 = POPView(view: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1 = POPView(view: self.view)
        view1.delegate = viewModel
        view = view1.createdView(controller: self)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "History", style: .plain, target: self, action: #selector(historyTapped))
    }
    
    
    @objc func historyTapped(sender: UIBarItem) {
        self.navigationController?.pushViewController(HistoryViewController(), animated: true)
    }
    
}

