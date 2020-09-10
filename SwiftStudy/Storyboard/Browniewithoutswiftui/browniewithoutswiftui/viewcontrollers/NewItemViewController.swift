//
//  NewItemViewController.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 03/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import UIKit

protocol AddAnItemDelegate {
    func addNew(_ item:Item)
}

class NewItemViewController: UIViewController {
    @IBOutlet var nameField:UITextField?
    @IBOutlet var caloriesField:UITextField?
    
    var delegate:AddAnItemDelegate?
    init(delegate:AddAnItemDelegate) {
        self.delegate = delegate
        super.init(nibName: "NewItemViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func addNewItem() {
        let name = nameField!.text
        let calories = Double(caloriesField!.text!)
        
        if name == nil || calories == nil {
            return
        }
        
        let item = Item(name: name!, calories: calories!)
        delegate!.addNew(item)
        
        if let navigation = navigationController {
            navigation.popViewController(animated: true)
        }
    }

}
