//
//  snooker_palApp.swift
//  snooker-pal
//
//  Created by Lennart Blom on 13.11.21.
//

import SwiftUI

@main
struct snooker_palApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
