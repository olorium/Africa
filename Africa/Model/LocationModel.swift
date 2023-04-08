//
//  LocationModel.swift
//  Africa
//
//  Created by Oleksii Vasyliev on 08.04.2023.
//

import Foundation
import MapKit

/// A model describing location
struct NationalParkLocation: Codable, Identifiable {
	/// ID of the location
	let id: String
	/// Name of the location
	let name: String
	/// Image of the location
	let image: String
	/// Latitude of the location
	let latitude: Double
	/// Longitude of the location
	let longitude: Double
}

extension NationalParkLocation {
	var location: CLLocationCoordinate2D {
		CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
	}
}
