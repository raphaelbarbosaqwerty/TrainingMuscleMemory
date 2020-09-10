//
//  Candy+CoreDataProperties.swift
//  CoredataRelationships
//
//  Created by Desenvolvimento on 16/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?

    public var wrappedName: String {
        name ?? "Unknow Candy"
    }
}
