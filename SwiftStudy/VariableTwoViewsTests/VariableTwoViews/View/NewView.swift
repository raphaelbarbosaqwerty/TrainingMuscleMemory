//
//  NewView.swift
//  VariableTwoViews
//
//  Created by Desenvolvimento on 13/12/19.
//  Copyright © 2019 Rapahel Barbosa. All rights reserved.
//

import SwiftUI

struct NewView: View {
    @Binding var score: Int

    var body: some View {
        VStack {
            Text("Button has been pushed \(self.score)")
            Button(action: {self.score += 1
            }) {
                Text("Adder")
            }
        }
    }
}

