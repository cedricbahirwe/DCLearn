//
//  DCLearnApp.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import SwiftUI

@main
struct DCLearnApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
