//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI

struct MotionAnimationView: View {
	// MARK: - Properties
	/// Randomise number of circles in the view.
	@State private var randomCircleNumber = Int.random(in: 12...16)
	/// Animation state
	@State private var isAnimating = false
	
	// MARK: - Body
    var body: some View {
		GeometryReader { proxy in
			ZStack {
				ForEach(0...randomCircleNumber, id: \.self) { item in
					Circle()
						.foregroundColor(.gray)
						.opacity(0.15)
						.frame(
							width: randomSize(),
							height: randomSize(),
							alignment: .center
						)
						.scaleEffect(isAnimating ? randomScale() : 1)
						.position(
							x: randomCoordinate(max: proxy.size.width),
							y: randomCoordinate(max: proxy.size.height)
						)
						.animation (
							Animation.interpolatingSpring(stiffness: 0.5,damping: 0.5)
								.repeatForever()
								.speed(randomSpeed())
								.delay(randomDelay())
						, value: isAnimating)
						.onAppear {
							isAnimating = true
						}
				}
			}
			.drawingGroup()
		}
    }
	
	// MARK: - Animation
	
	/// Used to create random coordinate.
	/// - Parameter max: Maximum in the random range
	/// - Returns: Random CGFloat with predefined max range.
	private func randomCoordinate(max: CGFloat) -> CGFloat {
		CGFloat.random(in: 0...max)
	}
	
	/// Used to creates random size for the views.
	/// - Returns: Random CGFloat with predefined range.
	private func randomSize() -> CGFloat {
		CGFloat(Int.random(in: 10...300))
	}
	
	/// Used to creates random scale for the views.
	/// - Returns: Random CGFloat with predefined range.
	private func randomScale() -> CGFloat {
		CGFloat(Double.random(in: 0.1...2.0))
	}
	
	/// Used to creates random speed for the views animation.
	/// - Returns: Random Double with predefined range.
	private func randomSpeed() -> Double {
		Double.random(in: 0.025...1.0)
	}
	
	/// Used to creates random delay for the views animation.
	/// - Returns: Random Double with predefined range.
	private func randomDelay() -> Double {
		Double.random(in: 0...2)
	}
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
