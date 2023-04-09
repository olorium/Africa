//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 09.04.2023.
//

import SwiftUI

struct AnimalGridItemView: View {
	// MARK: - Properties
	let animal: Animal
	
	// MARK: - Body
    var body: some View {
		Image(animal.image)
			.resizable()
			.scaledToFit()
			.cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
		AnimalGridItemView(animal: Animal.mockAnimal)
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
