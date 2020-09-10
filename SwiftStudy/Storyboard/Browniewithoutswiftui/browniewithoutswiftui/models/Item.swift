//
//  Item.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 02/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding {
    let name: String
    let calories: Double
    
    init(name: String, calories: Double) {
        self.name = name
        self.calories = calories
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as! String
        self.calories = aDecoder.decodeObject(forKey: "calories") as! Double
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.calories, forKey: "calories")
    }
}

func ==(first:Item, second:Item) -> Bool {
    return first.name == second.name && first.calories == second.calories
}
