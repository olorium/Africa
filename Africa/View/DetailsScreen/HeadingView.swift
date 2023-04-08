//
//  HeadingView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct HeadingView: View {
	// MARK: - Properties
	/// The name of the icon to show.
	var headingImage: String
	/// The title text for the heading.
	var headingText: String
	
	// MARK: - Body
    var body: some View {
		HStack {
			Image(systemName: headingImage)
				.foregroundColor(.accentColor)
				.imageScale(.large)
			
			Text(headingText)
				.font(.title3)
				.fontWeight(.bold)
		}
		.padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
		HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
