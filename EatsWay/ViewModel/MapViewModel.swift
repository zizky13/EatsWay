//
//  MapViewModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 14/05/25.
//

import CoreLocation
import Foundation
import MapKit

class MapViewModel: ObservableObject {
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    private let locationManager = LocationManager()
    private let radius: Double = 1000 // 1km filter radius
    
//    init() {
//        locationManager.onLocationUpdate = { [weak self] location in
//            self?.updateRegionAndAnnotations(with: location)
//        }
//    }
    
    func requestLocation() {
        locationManager.requestLocation()
    }
    
    private func updateRegionAndAnnotations(with location: CLLocation) {
        region = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: radius * 2,
            longitudinalMeters: radius * 2
        )
        
//        annotations = samplePoints
//            .filter { point in
//                let pointLocation = CLLocation(latitude: point.0, longitude: point.1)
//                let distance = location.distance(from: pointLocation)
//                return distance <= radius
//            }
//            .map { point in
//                IdentifiablePoint(
//                    id: UUID(),
//                    coordinate: CLLocationCoordinate2D(latitude: point.0, longitude: point.1)
//                )
//            }
    }
}
