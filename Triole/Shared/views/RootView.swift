//
//  RootView.swift
//  Triole (iOS)
//
//  Created by Alejandro Martinez Montero on 22/1/22.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var radioStationManagmentObject: RadioController
    var body: some View {
        TabView {
            /*
            NavigationView {
                Button("Press") {
                    print("pressing button")
                    self.radioStationManagmentObject.requestData()
                }
             */
            Text("hi")
            //}

            .tabItem {
                Label("Home", systemImage: "house")
            }

            
            NavigationView {
                Button("i dont know") {
                    
                }
             
            }
             
                
            .tabItem {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
        }
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(radioStationManagmentObject: RadioController())
    }
}
