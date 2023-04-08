//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct AnimalListItemView: View {
	// MARK: - Properties
	/// Animal to present in the list
	let animal: Animal
	
	// MARK: - Body
    var body: some View {
		HStack(alignment: .center, spacing: 16) {
			Image(animal.image)
				.resizable()
				.scaledToFill()
				.frame(width: 90, height: 90)
				.clipShape(RoundedRectangle(cornerRadius: 12))
			VStack(alignment: .leading, spacing: 8) {
				Text(animal.name)
					.font(.title2)
					.fontWeight(.heavy)
					.foregroundColor(.accentColor)
				Text(animal.headline)
					.font(.footnote)
					.multilineTextAlignment(.leading)
					.lineLimit(2)
					.padding(.trailing, 8)
			}
		}
		
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
		AnimalListItemView(animal: Animal.mockAnimal)
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
