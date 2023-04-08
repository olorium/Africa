//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct InsetGalleryView: View {
	// MARK: - Properties
	/// The animal data to take images from.
	let animal: Animal
	
	// MARK: - Body
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(alignment: .center, spacing: 15) {
				ForEach(animal.gallery, id: \.self) { imageName in
					Image(imageName)
						.resizable()
						.scaledToFit()
						.frame(height: 200)
						.cornerRadius(12)
				}
			}
		}
	}
}

struct InsetGalleryView_Previews: PreviewProvider {
	static var previews: some View {
		InsetGalleryView(animal: Animal.mockAnimal)
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
