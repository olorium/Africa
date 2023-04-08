//
//  VideoModel.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import Foundation

/// Model describing video object
struct Video: Codable, Identifiable {
	/// ID of the video
	let id: String
	/// The name of the video
	let name: String
	/// The headline for the video
	let headline: String
}

extension Video {
	/// Video name with `video-` prefix.
	/// Used to find appropriate thumbnail.
	var thumbnail: String {
		"video-\(id)"
	}
}
