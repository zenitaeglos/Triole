//
//  SearchView.swift
//  Triole
//
//  Created by Alejandro Martinez Montero on 22/1/22.
//

import SwiftUI

struct SearchView: View {
    var searchTitle: String
    var values: [String] = ["one", "two"]
    @Binding var text: String
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    TextField("Search...", text: $text).frame(height: 30)
                    List {

                        ForEach(values, id: \.self) { value in
                            NavigationLink(destination: Text("nope")) {
                                Text(value)
                            }
                        }
                    }
                }

                .navigationTitle("Search")
            }
        }

    }
}

struct SearchView_Previews: PreviewProvider {
    @State static var text = "x"
    static var previews: some View {
        SearchView(searchTitle: "Search", text: $text)
    }
}
