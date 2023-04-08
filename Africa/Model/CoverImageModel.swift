//
//  CoverImageModel.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import Foundation

/// A model describes cover image.
struct CoverImage: Codable, Identifiable {
	/// Id of the image
	let id: Int
	/// The name of the image
	let name: String
}
