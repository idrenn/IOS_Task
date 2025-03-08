//
//  VideoPlayerView.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let videoName: String
    @State private var player: AVPlayer?
    
    @ObservedObject private var playbackManager = VideoPlaybackManager.shared
    
    var body: some View {
        
        VideoPlayer(player: player)
            .frame(height: 300)
            .onAppear {
                startPlaying()
            }
            .onDisappear {
                stopPlaying()
            }
    }
    
    private func startPlaying() {
        
        if let path = Bundle.main.path(forResource: videoName, ofType: "mp4") {
            let url = URL(fileURLWithPath: path)
            player = AVPlayer(url: url)
            if let player = player {
                playbackManager.play(player: player) // Use the playback manager
            }
        }
    }
    
    private func stopPlaying() {
        playbackManager.stopCurrentVideo()
    }
}


