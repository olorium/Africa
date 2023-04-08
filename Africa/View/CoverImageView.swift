//
//  CoverImageView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct CoverImageView: View {
	// MARK: - Properties
	/// Collection of the cover images.
	private let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
	
	// MARK: - Body
	var body: some View {
		TabView {
			ForEach(coverImages) { image in
				Image(image.name)
					.resizable()
					.scaledToFill()
			}
		}
		.tabViewStyle(.page)
	}
}

struct CoverImageView_Previews: PreviewProvider {
	static var previews: some View {
		CoverImageView()
			.previewLayout(.fixed(width: 400, height: 300))
	}
}
