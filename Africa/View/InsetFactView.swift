//
//  InsetFactView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct InsetFactView: View {
	// MARK: - Properties
	/// The animal data to take facts from.
	let animal: Animal
	
	// MARK: - Body
	var body: some View {
		GroupBox {
			TabView {
				ForEach(animal.fact, id: \.self) { fact in
					Text(fact)
				}
			}
			.tabViewStyle(.page)
			.frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
		}
	}
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
		InsetFactView(animal: Animal.mockAnimal)
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
