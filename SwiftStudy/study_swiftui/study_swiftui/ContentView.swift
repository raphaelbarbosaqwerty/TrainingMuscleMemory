//
//  ContentView.swift
//  study_swiftui
//
//  Created by Desenvolvimento on 06/12/19.
//  Copyright © 2019 raphaelbarbosaqwerty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myStateVariable = ""
    @State private var passwordVariable = ""
    @State private var pressButton = "Press the button"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("User input: \(myStateVariable)")
            TextField("", text: $myStateVariable)
            Text("Password input: \(passwordVariable)")
            TextField("", text: $passwordVariable)
            
            Text(pressButton)
            
            Button(action: {
                self.pressButton = "Parabens voce clicou"
            }) {
                Text("Click me")
            }.disabled(pressButton == "Parabens voce clicou")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
