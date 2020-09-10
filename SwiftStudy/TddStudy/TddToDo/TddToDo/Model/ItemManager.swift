//
//  Model:ItemManager.swift
//  TddToDo
//
//  Created by Desenvolvimento on 13/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import UIKit

class ItemManager: NSObject {
    var toDoCount: Int { return toDoItems.count }
    var doneCount: Int { return doneItems.count }
    private var toDoItems: [ToDoItem] = []
    private var doneItems: [ToDoItem] = []
    
    var toDoPathURL: URL {
        let filerURLs = FileManager.default.urls(
            for: .documentDirectory, in: .userDomainMask)
        
        guard let documentURL = filerURLs.first else {
            print("Something went wrong. Documents url could not be found")
            fatalError()
        }
        
        return documentURL.appendingPathComponent("toDoItems.plist")
    }
    
    override init() {
      super.init()
      /*
      NotificationCenter.default.addObserver(
        self,
        selector: #selector(save),
        name: .UIApplication.willResignActiveNotification,
        object: nil)
      */
      if let nsToDoItems = NSArray(contentsOf: toDoPathURL) {
        
        for dict in nsToDoItems {
          if let toDoItem = ToDoItem(dict: dict as! [String:Any]) {
            toDoItems.append(toDoItem)
          }
        }
      }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        save()
    }
    
    func add(_ item: ToDoItem) {
        
        if !toDoItems.contains(item) {
            toDoItems.append(item)
        }
        
    }
    
    func item(at index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItem(at index: Int) {
        let item = toDoItems.remove(at: index)
        doneItems.append(item)
    }
    
    func doneItem(at index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
    func removeAll() {
        toDoItems.removeAll()
        doneItems.removeAll()
    }
    
    func uncheckItem(at index: Int) {
        let item = doneItems.remove(at: index)
        toDoItems.append(item)
    }
    
    @objc func save() {
      let nsToDoItems = toDoItems.map { $0.plistDict }

       
        guard !nsToDoItems.isEmpty else {
        try? FileManager.default.removeItem(at: toDoPathURL)
        return
      }
      do {
        let plistData = try PropertyListSerialization.data(
          fromPropertyList: nsToDoItems,
          format: PropertyListSerialization.PropertyListFormat.xml,
          options: PropertyListSerialization.WriteOptions(0)
        )
        try plistData.write(to: toDoPathURL,
                            options: Data.WritingOptions.atomic)
      } catch {
        print(error)
      }
    }
    
    
}
