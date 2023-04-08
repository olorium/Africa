//
//  MapView.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
	// MARK: - Properties
	/// Initial region for the map.
	@State private var region: MKCoordinateRegion = {
		var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
		var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
		var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
		return mapRegion
	}()
	/// Locations data
	let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
	
	// MARK: - Body
    var body: some View {
		Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
			MapAnnotation(coordinate: item.location) {
				MapAnnotationView(location: item)
			}
		})
		.overlay(alignment: .top) {
			HStack(alignment: .center, spacing: 12) {
				Image("compass")
					.resizable()
					.scaledToFit()
					.frame(width: 48, height: 48)
				
				VStack(alignment: .leading, spacing: 3) {
					HStack {
						Text("Latitude:")
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						Spacer()
						Text("\(region.center.latitude)")
							.font(.footnote)
							.foregroundColor(.white)
					}
					
					Divider()
					
					HStack {
						Text("Longitude:")
							.font(.footnote)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						Spacer()
						Text("\(region.center.longitude)")
							.font(.footnote)
							.foregroundColor(.white)
					}
				}
			}
			.padding(.vertical, 12)
			.padding(.horizontal, 16)
			.background(Color.black.cornerRadius(8).opacity(0.6))
			.padding()
		}
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
