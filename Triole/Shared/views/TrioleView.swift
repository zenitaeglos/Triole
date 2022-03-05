//
//  TrioleView.swift
//  Triole (iOS)
//
//  Created by Alejandro Martinez Montero on 17/12/21.
//

import SwiftUI

//TODO delete this file
/*
struct TrioleView: View {
    @ObservedObject var radio: RadioController
    @State var selection: NavigationItem? = .all
    #if os(macOS)
    var sideBar: some View {
        List(selection: $selection) {
            NavigationLink(
                destination:  Button("click") {
                    radio.requestData()
                },
              tag: NavigationItem.all,
              selection: $selection
            ) {
              Label("Home", systemImage: "house")
            }
            .tag(NavigationItem.all)
            NavigationLink(
              destination: Text("claro"),
              tag: NavigationItem.favorites,
              selection: $selection
            ) {
              Label("Search", systemImage: "magnifyingglass")
            }
            .tag(NavigationItem.favorites)
          }
        .frame(minWidth: 200)
        .listStyle(SidebarListStyle())
        .toolbar {
            ToolbarItem {
                Button(action: toggleSideBar) {
                    Label("Toggle Sidebar", systemImage: "sidebar.left")
                }
            }
        }
    }
    #endif
    
    var body: some View {
        #if os(iOS)
        TabView {
            NavigationView {
                Button("Press") {
                    print("pressing button")
                    self.radio.requestData()
                }
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            NavigationView {
                
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
        }
        #elseif os(macOS)
        NavigationView {
            sideBar
            Text("You can do it")
        }

        #endif
    }
    

    #if os(macOS)
    func toggleSideBar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar), with: nil)
    }
    #endif
}

struct TrioleView_Previews: PreviewProvider {
    static var previews: some View {
        TrioleView(radio: RadioController())
    }
}
*/
