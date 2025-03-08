//
//  RootView.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import SwiftUI

struct RootView: View {
    
    @State private var path = NavigationPath() // Used for managing navigation state
    @State private var isAuthenticated = false // Check if user is logged in
    
    var body: some View {
        
        NavigationStack(path: $path) {
            SplashView(path: $path, isAuthenticated: $isAuthenticated)
                .navigationDestination(for: String.self) { value in
                    if value == "FeedView" {
                        FeedView()
                    }
                }
        }
    }
}

