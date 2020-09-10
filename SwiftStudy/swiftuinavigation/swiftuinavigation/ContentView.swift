//
//  ContentView.swift
//  swiftuinavigation
//
//  Created by Desenvolvimento on 10/12/19.
//  Copyright © 2019 raphaelbarbosaqwerty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Enter Course")
                    .foregroundColor(Color.white)
                    .padding(12)
            }
                .background(Color.red)
                .cornerRadius(12)
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: PedidosView()) {
                Text("Pedidos")
                    .foregroundColor(Color.white)
                    .padding(12)
            }
                .background(Color.red)
                .cornerRadius(12)
        }
    }
}

struct PedidosView: View {
    var body: some View {
        NavigationLink(destination: ChamadosView()) {
            Text("Novos Pedidos")
                .foregroundColor(Color.white)
                .padding(12)
        }
            .background(Color.red)
            .cornerRadius(12)
    }
}

struct ChamadosView: View {
    var body: some View {
        Text("Novos chamados")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
