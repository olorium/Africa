//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
	// MARK: - Properties
	/// Video file name.
	var videoSelected: String
	/// Video title.
	var videoTitle: String
	
	// MARK: - Body
    var body: some View {
		VStack {
			VideoPlayer(player: Player().playVideo(fileName: videoSelected, format: "mp4"))
				.overlay(alignment: .topLeading) {
					Image("logo")
						.resizable()
						.scaledToFit()
						.frame(width: 32, height: 32)
						.padding(.top, 6)
						.padding(.horizontal, 8)
				}
		}
		.tint(.accentColor)
		.navigationTitle(videoTitle)
		.navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
		}
    }
}
