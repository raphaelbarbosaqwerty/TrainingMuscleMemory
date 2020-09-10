//
//  Meal.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 02/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import Foundation

class Meal: NSObject, NSCoding  {
    let name:String
    let happiness:Int
    var items = Array<Item>()
    
    init(name: String, happiness: Int, items: Array<Item> = []) {
        self.name = name
        self.happiness = happiness
        self.items = items
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as! String
        self.happiness = aDecoder.decodeObject(forKey: "happiness") as! Int
        self.items = aDecoder.decodeObject(forKey: "items") as! Array<Item>
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.happiness, forKey: "happiness")
        aCoder.encode(self.items, forKey: "items")
    }
    
    func allCalories() -> Double {
        print("Calculating")
        var total = 0.0
        for i in items {
            total += i.calories
        }
        
        return total
    }
    
    func details() -> String {
        var message = "Happiness: \(self.happiness)"
        
        for item in self.items {
            message += "\n * \(item.name) - calories: \(item.calories)"
        }
        
        return message
    }
    
    
}

