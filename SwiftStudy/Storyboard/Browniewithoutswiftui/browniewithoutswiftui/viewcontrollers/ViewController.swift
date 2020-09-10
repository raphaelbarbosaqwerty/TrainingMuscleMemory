//
//  ViewController.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 02/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import UIKit

protocol AddAMealDelegate {
    func add(_ meal: Meal)
    
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddAnItemDelegate {

    var items = Array<Item>()
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var happinessField: UITextField!
    var delegate:AddAMealDelegate?
    var selected = Array<Item>()
    
    @IBOutlet var tableView: UITableView?
    
    func addNew(_ item: Item) {
        items.append(item)
        
        Dao().save(items)
        
        if let table = tableView {
            table.reloadData()
        } else {
            Alert(controller: self).show("Unexpected error, but the item was added.")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let item = items[row]
        var cell = UITableViewCell(style:
            UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = item.name
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if cell == nil {
            return
        }
        
        if (cell!.accessoryType == UITableViewCell.AccessoryType.none) {
            cell!.accessoryType = UITableViewCell.AccessoryType.checkmark
            selected.append(items[indexPath.row])
        } else {
            cell!.accessoryType = UITableViewCell.AccessoryType.none
            if let position = selected.index(of: items[indexPath.row]) {
                selected.remove(at: position)
            }
            
        }
        
    }
    
    /*
     Criando botao de forma programatica
     */
    
    func getUserDir() -> String {
        let userDirs = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask,
            true)
            
        return userDirs[0]
    }
    
    override func viewDidLoad() {
        let newItemButton = UIBarButtonItem(title: "new item",
                                            style: UIBarButtonItem.Style.plain,
                                            target: self,
                                            action: #selector(showNewItem))
        navigationItem.rightBarButtonItem = newItemButton
        items = Dao().load()
    }
    
    /*
     Chamando a nova tela com navigations
     */
    @objc func showNewItem() {
        let newItem = NewItemViewController(delegate: self)
        if let navigation = navigationController {
            navigation.pushViewController(newItem, animated: true)
        } else {
            Alert(controller: self).show()
        }
    }

    @IBAction func add() {
        if let meal = getMealFromForm() {
            if let meals = delegate {
                meals.add(meal)
                if let navigation = self.navigationController {
                    navigation.popViewController(animated: true)
                } else {
                    Alert(controller: self).show("Unexpected error, but the meal was added.")
                }
                return
            }
        }
        Alert(controller: self).show()
    }
    
    func getMealFromForm() -> Meal? {
        if nameField == nil || happinessField == nil {
            return nil
        }
        
        let name = nameField!.text
        let happiness = Int(happinessField!.text!)
        
        if happiness == nil {
            return nil
        }
        
        let meal = Meal(name: name!, happiness: happiness!, items: selected)
        
        print("eaten: \(meal.name) \(meal.happiness) \(meal.items)")
        
        return meal
    }
}

