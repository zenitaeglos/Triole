//
//  RootView.swift
//  Triole (iOS)
//
//  Created by Alejandro Martinez Montero on 22/1/22.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var radioStationManagmentObject: RadioController
    
    @State private var text = ""
    var body: some View {
        TabView {
            NavigationView {
                List {
                    NavigationLink(destination:     Text("hola")) {
                        Text("is iths correct")
                    }
                }
                .navigationTitle("Home")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)

            SearchView(searchTitle: "Search", text: $text)
            .navigationViewStyle(StackNavigationViewStyle())
             
                
            .tabItem {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
            .tag(2)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(radioStationManagmentObject: RadioController())
    }
}
