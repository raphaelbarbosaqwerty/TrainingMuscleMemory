//
//  ContentView.swift
//  VariableTwoViews
//
//  Created by Desenvolvimento on 13/12/19.
//  Copyright © 2019 Rapahel Barbosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var input = UserInput()

    var body: some View {
        NavigationView {
            VStack {
                Text("Tap button: \(self.input.score)")
                Button(action: {
                    self.input.score += 1
                })
                    {
                        Text("Adder")
                    }
                NavigationLink(destination: NewView(score: self.$input.score)) {
                    Text("Next View")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
