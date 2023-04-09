//
//  CenterModifier.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 09.04.2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
	func body(content: Content) -> some View {
		HStack {
			Spacer()
			content
			Spacer()
		}
	}
}
