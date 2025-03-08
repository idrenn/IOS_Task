//
//  PostView.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import SwiftUI

struct PostView: View {
    
    let post: PostModel
    
    var body: some View {
        
        ZStack { // Ensures both media appear together
            VStack(spacing: 10) {
                switch post.type {
                case .image(let imageName):
                    if let image = CacheManager.shared.getImage(named: imageName) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                    }
                    
                case .video(let videoName):
                    VideoPlayerView(videoName: videoName) // Plays one video at a time
                    
                case .mixed(let imageName, let videoName):
                    HStack { // Arrange vertically with spacing
                        if let image = CacheManager.shared.getImage(named: imageName) {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 300)
                        }
                        VideoPlayerView(videoName: videoName)
                            .frame(height: 300) // Ensure proper size
                    }
                }
            }
            .background(Color.black.opacity(0.05)) // Optional: Add background for visibility
            .cornerRadius(10)
            .padding(.bottom, 10)
        }
    }
}


