//
//  ContentView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties
	/// The collection of animals
	private let animals: [Animal] = Bundle.main.decode("animals.json")
	
	// MARK: - Body
	var body: some View {
		NavigationView {
			List {
				CoverImageView()
					.frame(height: 300)
					.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
				ForEach(animals) { animal in
					AnimalListItemView(animal: animal)
				}
			}
			.listStyle(.plain)
			.navigationBarTitle("Africa", displayMode: .large)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
