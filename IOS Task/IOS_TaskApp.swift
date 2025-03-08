//
//  IOS_TaskApp.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import SwiftUI

@main
struct IOS_TaskApp: App {
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
