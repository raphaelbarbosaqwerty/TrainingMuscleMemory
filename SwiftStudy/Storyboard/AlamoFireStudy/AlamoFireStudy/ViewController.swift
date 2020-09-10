//
//  ViewController.swift
//  AlamoFireStudy
//
//  Created by Desenvolvimento on 19/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!

    private let networkingClient = NetworkingClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func executeRequest(_ sender: Any) {
        guard let urlToExecute = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {
            return
        }
        
        networkingClient.execute(urlToExecute) { (json, error) in
            if let error = error {
                self.textView.text = error.localizedDescription
            } else if let json = json {
                self.textView.text = json.description
            }
        }
    }
}

