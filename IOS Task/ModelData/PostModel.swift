//
//  PostModel.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import Foundation

enum PostType {
    
    case image(String) // Image File Name
    case video(String) // Video File Name
    case mixed(image: String, video: String)  // Both image and video
}

struct PostModel:Identifiable {
    
    let id = UUID()
    let type: PostType
}
