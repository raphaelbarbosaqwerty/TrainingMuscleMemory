//
//  Singer+CoreDataProperties.swift
//  CoredataFilteringFetchRequest
//
//  Created by Desenvolvimento on 16/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var lastName: String?
    @NSManaged public var firstName: String?
    
    var wrappedFirstName: String {
        firstName ?? "Unknow"
    }
    
    var wrappedLastName: String {
        lastName ?? "Unknow"
    }
}
