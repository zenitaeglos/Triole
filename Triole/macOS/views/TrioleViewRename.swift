//
//  TrioleView.swift
//  Triole (macOS)
//
//  Created by Alejandro Martinez Montero on 17/12/21.
//

import SwiftUI

struct TrioleViewRename: View {
    var body: some View {
        List {
            NavigationLink(destination: Text("hola")) {
                Label("Home", systemImage: "house")
            }
            
            NavigationLink(destination: Text("how")) {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
        }
    }
}

struct TrioleViewRename_Previews: PreviewProvider {
    static var previews: some View {
        TrioleViewRename()
    }
}
