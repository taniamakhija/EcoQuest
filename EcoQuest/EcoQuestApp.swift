//
//  EcoQuestApp.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

@main
struct EcoQuestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: TrashItem.self)
        }
    }
}
