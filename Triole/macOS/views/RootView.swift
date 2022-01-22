//
//  RootView.swift
//  Triole (macOS)
//
//  Created by Alejandro Martinez Montero on 22/1/22.
//

import SwiftUI



struct RootView: View {
    @ObservedObject var radioStationManagmentObject: RadioController
    
    @State var selection: NavigationItem? = .all
    
    // sideBar as a variable. Has to be added to main View
    var sideBar: some View {
        List(selection: $selection) {
            NavigationLink(
                destination:  Button("click") {
                    self.radioStationManagmentObject.requestData()
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
    var body: some View {
        NavigationView {
            self.sideBar
        }
    }
    
    func toggleSideBar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar), with: nil)
    }
    
    
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(radioStationManagmentObject: RadioController())
    }
}
