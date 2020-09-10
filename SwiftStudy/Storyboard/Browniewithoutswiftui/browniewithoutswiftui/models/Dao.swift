//
//  Dao.swift
//  browniewithoutswiftui
//
//  Created by Desenvolvimento on 05/12/19.
//  Copyright © 2019 Desenvolvimento. All rights reserved.
//

import Foundation

class Dao {
    let mealsArchive: String
    let itemsArchive: String
    
    init() {
        let userDir = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask,
            true)
        let dir = userDir[0]
        
        mealsArchive = "\(dir)/browniewithoutswiftui"
        itemsArchive = "\(dir)/browniewithoutswiftui"
    }
    
    func save(_ meals: Array<Meal>) {
        NSKeyedArchiver.archiveRootObject(meals, toFile: mealsArchive)
    }
    
    func load() -> Array<Meal> {
        /*
         if let loaded = NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(mealsArchive) {
             return loaded as! Array<Meal>
         }
         */
        
        return Array<Meal>()
    }
    
    func save(_ items: Array<Item>) {
        NSKeyedArchiver.archiveRootObject(items, toFile: itemsArchive)
    }
    
    func load() -> Array<Item> {
        /*
         if let loaded = NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(itemsArchive) {
             return loaded as! Array<Item>
         }
         */
        
        return Array<Item>()
    }
}
