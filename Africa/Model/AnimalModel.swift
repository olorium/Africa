//
//  AnimalModel.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import Foundation

/// A model describes animal.
struct Animal: Codable, Identifiable {
	/// The id of the animal.
	let id: String
	/// The name of the animal.
	let name: String
	/// Headline text description.
	let headline: String
	/// Main description text.
	let description: String
	/// The link to wiki.
	let link: String
	/// Image name for the animal.
	let image: String
	/// Collection with images wit animal
	let gallery: [String]
	/// Collection with facts for animal.
	let fact: [String]
}
