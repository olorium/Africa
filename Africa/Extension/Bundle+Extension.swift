//
//  Bundle+Extension.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import Foundation

extension Bundle {
	func decode(_ file: String) -> [CoverImage] {
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Failed to locate \(file) in bundle")
		}
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Failed to load \(file) from bundle")
		}
		let decoder = JSONDecoder()
		guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
			fatalError("Failed to decode \(file) from bundle")
		}
		return loaded
	}
}
