//
//  MealsTableViewController.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 02/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController, AddAMealDelegate {

    var meals = Array<Meal>()
    
    func add(_ meal: Meal) {
        meals.append(meal)
        
        Dao().save(meals)
        
        tableView.reloadData()
    }
    
    func getUserDir() -> String {
        let userDirs = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask,
            true)
            
        return userDirs[0]
    }
    
    override func viewDidLoad() {
        meals = Dao().load()
        
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
        
        cell.textLabel?.text = meal.name
        
        let longPress = UILongPressGestureRecognizer(target: self,
                                                     action: #selector(showDetails))
        cell.addGestureRecognizer(longPress)
        
        return cell
    }
    
    
    @objc func showDetails(recognizer: UILongPressGestureRecognizer) {
        if recognizer.state == UIGestureRecognizer.State.began {
            let cell = recognizer.view as! UITableViewCell
            let indexPath = tableView.indexPath(for: cell)
            
            if indexPath == nil {
                return
            }
            
            let row = indexPath!.row
            let meal = meals[row]
            
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        if(segue.identifier == "addMeal") {
            let view = segue.destination as! ViewController
            view.delegate = self
        }
    }
    
    
    
    

}
