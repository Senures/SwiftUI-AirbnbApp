//
//  AirBnb_ExampleApp.swift
//  AirBnb-Example
//
//  Created by Semanur Eserler on 13.10.2023.
//

import SwiftUI

@main
struct AirBnb_ExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
