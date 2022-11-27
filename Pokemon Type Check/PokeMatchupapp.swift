//
//  Pokemon_Type_CheckApp.swift
//  Pokemon Type Check
//
//  Created by Nick Hale on 11/19/22.
//

import SwiftUI

@main
struct PokeMatchupapp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
