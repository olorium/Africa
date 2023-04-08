//
//  VideoListView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct VideoListView: View {
	// MARK: - Properties
	/// Collection of videos.
	@State var videos: [Video] = Bundle.main.decode("videos.json")
	/// Haptic feedback for the shuffle button
	let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
	
	// MARK: - Body
    var body: some View {
		NavigationView {
			List {
				ForEach(videos) { video in
					VideoListItemView(video: video)
						.padding(.vertical, 8)
				}
			}
			.navigationTitle("Videos")
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						videos.shuffle()
						hapticImpact.impactOccurred()
					} label: {
						Image(systemName: "arrow.2.squarepath")
					}
				}
			}
		}
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
