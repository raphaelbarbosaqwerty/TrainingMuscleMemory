//
//  ContentView.swift
//  CodableDataStudy
//
//  Created by Desenvolvimento on 17/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Decode json") {
                let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                        "street": "555, Taylor Swift Avenue",
                        "city": "Nashville"
                    }
                }
                """
                
                let data = Data(input.utf8)
                
                DecodificarModel(data: data)
                
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
