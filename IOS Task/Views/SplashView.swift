//
//  Splash.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import SwiftUI

struct SplashView: View {
    
    @Binding var path: NavigationPath
    @Binding var isAuthenticated: Bool
    
    var body: some View {
        
        VStack {
            Text("Splash Screen")
                .font(.largeTitle)
                .bold()
        }
        .onAppear {
            
            isAuthenticated = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Delay 2 seconds
                if isAuthenticated {
                    path.append("FeedView") // Navigate to FeedView
                }
            }
        }
    }
}

