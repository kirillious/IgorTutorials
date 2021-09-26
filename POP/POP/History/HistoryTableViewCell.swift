//
//  HistoryTableViewCell.swift
//  POP
//
//  Created by Kirill on 24.09.2021.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(historyLabel)
        NSLayoutConstraint.activate([historyLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor), historyLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var historyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    


}
