//
//  Alert.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 04/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import UIKit
import Foundation

class Alert {
    let controller:UIViewController
    
    init(controller:UIViewController) {
        self.controller = controller
    }
    
    func show(_ message: String = "Unexpected error.") {
        let details = UIAlertController(title: "Sorry",
                                        message: message,
                                        preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "Understood",
                                style: UIAlertAction.Style.cancel,
                                handler: nil)
       details.addAction(cancel)
        controller.present(details, animated: true, completion: nil)
    }
}
