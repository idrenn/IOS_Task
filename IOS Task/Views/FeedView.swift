//
//  FeedView.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject private var viewModel = FeedViewModel()
    
    var body: some View {
        
        List(viewModel.posts) { post in
            PostView(post: post)
                .listRowSeparator(.hidden) // Hide separators for cleaner look
                .listRowInsets(EdgeInsets()) // Remove default insets
        }
        .navigationBarBackButtonHidden(true) // Hides the back button
        .navigationTitle("Feeds") // Adds a title to the top bar
        .navigationBarTitleDisplayMode(.large) // Display a large title within an expanded navigation bar
    }
}

#Preview {
    FeedView()
}
