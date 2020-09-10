//
//  InputViewController.swift
//  TddToDo
//
//  Created by Desenvolvimento on 15/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import UIKit
import CoreLocation

class InputViewController: UIViewController {

    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var dateTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var saveButton: UIButton!
    
    lazy var geocoder = CLGeocoder()
    var itemManager: ItemManager?
    
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter
    }()
    
    @IBAction func save() {
        guard let titleString = titleTextField.text, !titleString.isEmpty  else { return }
        let date: Date?
        
        if let dateText = self.dateTextField.text, !dateText.isEmpty {
            date = dateFormatter.date(from: dateText)
        } else {
            date = nil
        }
        
        let descriptionString = descriptionTextField.text
        
        if let locationName = locationTextField.text, !locationName.isEmpty {
            if let address = addressTextField.text, !address.isEmpty {
                geocoder.geocodeAddressString(address) {
                  [unowned self] (placeMarks, error) -> Void in
                  
                  
                  let placeMark = placeMarks?.first
                  
                  
                  let item = ToDoItem(
                    title: titleString,
                    itemDescription: descriptionString,
                    timestamp: date?.timeIntervalSince1970,
                    location: Location(
                      name: locationName,
                      coordinate: placeMark?.location?.coordinate))
                  
                  DispatchQueue.main.async(execute: {
                    self.itemManager?.add(item)
                    self.dismiss(animated: true)
                  })
                }
              } else {
                let item = ToDoItem(title: titleString,
                                    itemDescription: descriptionString,
                                    timestamp: date?.timeIntervalSince1970,
                                    location: nil)
                self.itemManager?.add(item)
                dismiss(animated: true)
              }
            } else {
              let item = ToDoItem(
                title: titleString,
                itemDescription: descriptionString,
                timestamp: date?.timeIntervalSince1970)
              
              self.itemManager?.add(item)
              dismiss(animated: true)
            }
        }
    }

