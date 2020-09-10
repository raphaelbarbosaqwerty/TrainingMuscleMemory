//
//  ItemListViewController.swift
//  TddToDo
//
//  Created by Desenvolvimento on 13/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate & ItemManagerSettable)!
    
    let itemManager = ItemManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
        dataProvider.itemManager = itemManager
        
        NotificationCenter.default.addObserver(
        self,
        selector: #selector(showDetails(sender:)),
        name: NSNotification.Name("ItemSelectedNotification"),
        object: nil)
    }
    
    @objc func showDetails(sender: NSNotification) {
        guard let index = sender.userInfo?["index"] as? Int else { fatalError() }
        
        if let nextViewController = storyboard?.instantiateViewController(
            withIdentifier: "DetailViewController") as? DetailViewController {
            
            nextViewController.itemInfo = (itemManager, index)
            navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    @IBAction func addItem(_ sender: AnyObject) {
        
        if let nextViewController = storyboard?.instantiateViewController(withIdentifier: "InputViewController") as? InputViewController {
            present(InputViewController(),
            animated: true,
            completion: nil)
            
            nextViewController.itemManager = ItemManager()
        }
    }
}
