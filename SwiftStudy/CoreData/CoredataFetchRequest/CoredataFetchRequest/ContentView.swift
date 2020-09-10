//
//  ContentView.swift
//  CoredataFetchRequest
//
//  Created by Desenvolvimento on 16/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Ship.entity(), sortDescriptors: [], predicate: NSPredicate(format: "universe == %@", "Star Wars")) var ships: FetchedResults<Ship>
    
    var body: some View {
        VStack {
            List(ships, id: \.self) { ship in
                Text(ship.name ?? "Unknow name")
            }
            
            Button("Add Examples") {
                let shipOne = Ship(context: self.moc)
                shipOne.name = "Enterprise"
                shipOne.universe = "Star Trek"
                
                let shipTwo = Ship(context: self.moc)
                shipTwo.name = "Defiant"
                shipTwo.universe = "Star Trek"
                
                let shipThree = Ship(context: self.moc)
                shipThree.name = "Millennium Falcon"
                shipThree.universe = "Star Wars"
                
                let shipFour = Ship(context: self.moc)
                shipFour.name = "Executor"
                shipFour.universe = "Star Wars"
                
                try? self.moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
