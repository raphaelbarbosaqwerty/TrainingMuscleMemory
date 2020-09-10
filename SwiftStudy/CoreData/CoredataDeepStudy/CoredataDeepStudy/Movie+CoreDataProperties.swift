//
//  Movie+CoreDataProperties.swift
//  CoredataDeepStudy
//
//  Created by Desenvolvimento on 16/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16
    
    public var wrappedTitle: String {
        return title ?? "Unknow Title"
    }

}
