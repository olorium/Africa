//
//  CreditsView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 09.04.2023.
//

import SwiftUI

struct CreditsView: View {
	// MARK: - Body
    var body: some View {
		VStack {
			Image("compass")
				.resizable()
				.scaledToFit()
				.frame(width: 128, height: 128)
			
			Text("""
	Copyright © Oleksii Vasyliev
	All right reserved
	♡
	""")
			.font(.footnote)
		.multilineTextAlignment(.center)
		}
		.padding()
		.opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
