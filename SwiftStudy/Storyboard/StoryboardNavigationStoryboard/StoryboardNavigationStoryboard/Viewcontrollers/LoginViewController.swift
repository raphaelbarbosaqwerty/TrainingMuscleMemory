//
//  LoginViewController.swift
//  StoryboardNavigationStoryboard
//
//  Created by Desenvolvimento on 19/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
    @IBAction func loginTapped(_ sender: Any) {
        navigateToDashboard()
    }
    
    private func navigateToDashboard() {
        let dashboardStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let dashboardNavigationVC = dashboardStoryboard.instantiateViewController(withIdentifier: "DashboardReference") as? DashboardNavigationController else {
            return }
        
        present(dashboardNavigationVC, animated: true, completion: nil)
    }
    
}
