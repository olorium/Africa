//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import Foundation
import AVKit

/// A video player helper class
final class Player {
	/// Video player object.
	var videoPlayer: AVPlayer?
	
	func playVideo(fileName: String, format: String) -> AVPlayer {
		if Bundle.main.url(forResource: fileName, withExtension: format) != nil {
			videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: format)!)
			videoPlayer?.play()
		}
		return videoPlayer!
	}
}
