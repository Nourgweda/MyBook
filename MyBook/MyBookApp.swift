//
//  MyBookApp.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import SwiftUI

@main
struct MyBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
