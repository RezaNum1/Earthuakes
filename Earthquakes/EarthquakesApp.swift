//
//  EarthquakesApp.swift
//  Earthquakes
//
//  Created by Reza Harris on 23/10/21.
//

import SwiftUI

@main
struct EarthquakesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
