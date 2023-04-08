//
//  GalleryView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			Text("Gallery")
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
