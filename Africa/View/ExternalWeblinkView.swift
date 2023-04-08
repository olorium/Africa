//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
	// MARK: - Properties
	/// Data object to take link from.
	let animal: Animal
	
	// MARK: - Body
    var body: some View {
		GroupBox {
			HStack {
				Image(systemName: "globe")
				Text("Wikipedia")
				Spacer()
				Group {
					Link(destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!) {
						Text(animal.name)
					}
					Image(systemName: "arrow.up.right.square")
				}
				.foregroundColor(.accentColor)
			}
		}
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var previews: some View {
		ExternalWeblinkView(animal: Animal.mockAnimal)
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
