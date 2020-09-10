//
//  RemoveMealController.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 04/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import UIKit
import Foundation


class RemoveMealController {
    let controller:UIViewController
    
    init(controller:UIViewController) {
        self.controller = controller
    }
    
    func show(_ meal:Meal, handler:@escaping (UIAlertAction) -> Void) {
        let details = UIAlertController(title: meal.name, message: meal.details(),
            preferredStyle: UIAlertController.Style.alert)
        
        /*
           closure
        */
        let removeButton = UIAlertAction(title: "Remove",
            style: UIAlertAction.Style.destructive,
            handler: handler)
        
        details.addAction(removeButton)
        
        let cancelButton = UIAlertAction(title: "Cancel",
             style: UIAlertAction.Style.cancel,
             handler: nil)
        details.addAction(cancelButton)
        
        controller.present(details, animated: true, completion: nil)
    }
}
