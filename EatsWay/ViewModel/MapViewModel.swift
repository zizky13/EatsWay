//
//  MapViewModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 14/05/25.
//

import CoreLocation
import Foundation
import MapKit

class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var userLocation: CLLocationCoordinate2D?
    @Published var polyline: MKPolyline?

    let startingLocationViewModel: StartingLocationViewModel
    private let locationManager = CLLocationManager()
    private let radius: Double = 1000  // 1km filter radius

    init(startingLocationViewModel: StartingLocationViewModel) {
        self.startingLocationViewModel = startingLocationViewModel
        super.init()
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }

    func locationManager(
        _ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]
    ) {
        guard let location = locations.last else { return }
        userLocation = location.coordinate
        updatePolyLine()
    }

    func locationManager(
        _ manager: CLLocationManager, didFailWithError error: Error
    ) {
        print("Location error: \(error.localizedDescription)")
    }

    private func updatePolyLine() {
        guard let userLocation = userLocation,
            let destination = startingLocationViewModel.selectedDestination
        else {
            polyline = nil
            return
        }

        let coordinates = [
            userLocation,
            destination.coordinate,
        ]
        polyline = MKPolyline(
            coordinates: coordinates, count: coordinates.count)
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedWhenInUse, .authorizedAlways:
            locationManager.startUpdatingLocation()
        default:
            polyline = nil
        }
    }
}
