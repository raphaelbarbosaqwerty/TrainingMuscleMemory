//
//  ViewController.swift
//  dynamictables
//
//  Created by Desenvolvimento on 02/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let meals = ["Cheesburger", "Meat", "Ham", "SomeFoodHere", "MCDonald", "MC Happy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let meal = meals[row]
        
        var cell = UITableViewCell(
            style: UITableViewCell.CellStyle.default,
            reuseIdentifier: nil)
        
        cell.textLabel?.text = meal
        
        return cell
    }

}

