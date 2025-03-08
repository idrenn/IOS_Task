//
//  VideoPlaybackManager.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import AVKit
import Combine

class VideoPlaybackManager: ObservableObject {
    
    static let shared = VideoPlaybackManager()
    
    @Published var currentPlayer: AVPlayer?
    
    private init() {}
    
    func play(player: AVPlayer) {
        if currentPlayer != player {
            currentPlayer?.pause() // Stop previously playing video
            currentPlayer = player
            player.play()
        }
    }
    
    func stopCurrentVideo() {
        currentPlayer?.pause()
        currentPlayer = nil
    }
}
