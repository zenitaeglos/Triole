//
//  TrioleApp.swift
//  Shared
//
//  Created by Alejandro Martinez Montero on 17/12/21.
//

import SwiftUI

@main
struct TrioleApp: App {
    let persistenceController = PersistenceController.shared

    let radioController = RadioController()
    var body: some Scene {
        WindowGroup {
            //TrioleViewRename()
            TrioleView(radio: radioController)
                .environment(\.managedObjectContext,
                             persistenceController.container.viewContext)
            /*
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
             */
        }
    }
}
