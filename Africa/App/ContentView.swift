//
//  ContentView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties
	/// Sets up views's layout.
	@State private var isGrid = false
	/// Collection of `GridItem` for grid.
	@State private var gridLayout: [GridItem] = [GridItem(.flexible())]
	/// The number of columns in the grid
	@State private var gridColumn = 1
	/// The grid icon name in the toolbar.
	@State private var toolbarIcon = "square.grid.2x2"
	/// The collection of animals
	private let animals: [Animal] = Bundle.main.decode("animals.json")
	/// Enables haptics feedback.
	private let haptics = UIImpactFeedbackGenerator(style: .medium)
	
	// MARK: - Body
	var body: some View {
		NavigationView {
			Group {
				if !isGrid {
					List {
						CoverImageView()
							.frame(height: 300)
							.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
						ForEach(animals) { animal in
							NavigationLink {
								AnimalDetailView(animal: animal)
							} label: {
								AnimalListItemView(animal: animal)
							}
						}
						CreditsView().modifier(CenterModifier())
					}
					.listStyle(.plain)
				} else {
					ScrollView(.vertical, showsIndicators: false) {
						LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
							ForEach(animals) { animal in
								NavigationLink {
									AnimalDetailView(animal: animal)
								} label: {
									AnimalGridItemView(animal: animal)
								}
							}
						}
						.padding(10)
						.animation(.easeIn)
					}
				}
			}
			.navigationBarTitle("Africa", displayMode: .large)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					HStack(spacing: 16) {
						Button {
							isGrid = false
							haptics.impactOccurred()
						} label: {
							Image(systemName: "square.fill.text.grid.1x2")
								.font(.title2)
								.foregroundColor(isGrid ? .primary : .accentColor)
						}
						
						Button {
							isGrid = true
							gridSwitch()
							haptics.impactOccurred()
						} label: {
							Image(systemName: toolbarIcon)
								.font(.title2)
								.foregroundColor(isGrid ? .accentColor : .primary)
						}
					}
				}
			}
		}
	}
	
	// MARK: - Methods
	
	/// Used to change the number of columns in a grid and update toolbar icon.
	private func gridSwitch() {
		gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
		gridColumn = gridLayout.count
		switch gridColumn {
		case 1:
			toolbarIcon = "square.grid.2x2"
		case 2:
			toolbarIcon = "square.grid.3x2"
		case 3:
			toolbarIcon = "rectangle.grid.1x2"
		default:
			toolbarIcon = "square.grid.2x2"
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
