//
//  FeedViewModel.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import Foundation
import Combine

class FeedViewModel: ObservableObject {
    
    @Published var posts: [PostModel] = []
    
    init() {
        loadPosts()
    }
    
    //Dummy Data
    private func loadPosts() {
        
        posts = [
        
            PostModel(type: .image("image1")),
            PostModel(type: .video("video1")),
            PostModel(type: .image("image2")),
            PostModel(type: .mixed(image: "image1", video: "video2")),
            PostModel(type: .image("image3")),
            PostModel(type: .video("video2"))]
    }
}
