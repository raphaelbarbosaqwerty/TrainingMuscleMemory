//
//  ItemCell.swift
//  TddToDo
//
//  Created by Desenvolvimento on 14/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter
    }()
    
    func configCell(with item: ToDoItem, checked: Bool = false) {
        titleLabel.text = item.title
        locationLabel.text = item.location?.name ?? ""
        
        if checked {
            let attributedString = NSAttributedString(string: item.title,
                                                      attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
            titleLabel.attributedText = attributedString
            locationLabel.text = nil
            dateLabel.text = nil
        } else {
            
            titleLabel.text = item.title
            locationLabel.text = item.location?.name ?? ""
            
            if let timestamp = item.timestamp {
                let date = Date(timeIntervalSince1970: timestamp)
                dateLabel.text = dateFormatter.string(from: date)
            }
        }
        
    }
}
