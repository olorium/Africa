//
//  GalleryView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct GalleryView: View {
	// MARK: - Properties
	/// Selected animal to show in the main image view.
	@State private var selectedAnimal: String = "lion"
	/// Collection of `GridItem` for grid.
	@State private var gridLayout: [GridItem] = [GridItem(.flexible())]
	/// The number of columns in the grid
	@State private var gridColumn = 3.0
	/// The collection of animals
	private let animals: [Animal] = Bundle.main.decode("animals.json")
	/// Haptic feedback.
	private let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
	
	
	// MARK: - body
    var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 30) {
				Image(selectedAnimal)
					.resizable()
					.scaledToFit()
					.clipShape(Circle())
					.overlay {
						Circle().stroke(Color.white, lineWidth: 8)
					}
				
				Slider(value: $gridColumn, in: 2...4, step: 1)
					.padding(.horizontal)
					.onChange(of: gridColumn) { _ in
						gridSwitch()
					}
				
				LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
					ForEach(animals) { animal in
						Image(animal.image)
							.resizable()
							.scaledToFit()
							.clipShape(Circle())
							.overlay {
								Circle().stroke(Color.white, lineWidth: 1)
							}
							.onTapGesture {
								selectedAnimal = animal.image
								hapticFeedback.impactOccurred()
							}
					}
				}
				.animation(.easeIn)
				.onAppear {
					gridSwitch()
				}
			}
			.padding(.horizontal, 10)
			.padding(.vertical, 50)
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(MotionAnimationView())
    }
	
	// MARK: - Methods
	
	/// Used to change the number of columns in a frid.
	private func gridSwitch() {
		gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
	}
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
