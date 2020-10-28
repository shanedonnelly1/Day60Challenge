//
//  Day60ChallengeApp.swift
//  Day60Challenge
//
//  Created by Shane on 28/10/2020.
//

import SwiftUI

@main
struct Day60ChallengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
