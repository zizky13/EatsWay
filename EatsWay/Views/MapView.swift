//
//  MapView.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 13/05/25.
//

import SwiftUI
import MapKit

import SwiftUI
import MapKit

struct MapView: UIViewControllerRepresentable {
    @ObservedObject var mapViewModel: MapViewModel
    
    func makeUIViewController(context: Context) -> UIViewController {
        let mapViewController = UIViewController()
        let mapView = MKMapView(frame: .zero)
        mapView.delegate = context.coordinator
        mapView.showsUserLocation = true
        mapViewController.view = mapView
        return mapViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        guard let mapView = uiViewController.view as? MKMapView else { return }
        
        // Remove existing overlays and annotations
        mapView.removeOverlays(mapView.overlays)
        mapView.removeAnnotations(mapView.annotations)
        
        // Add polyline if available
        if let polyline = mapViewModel.polyline {
            mapView.addOverlay(polyline)
        }
        
        // Add annotation for selected destination
        if let destination = mapViewModel.startingLocationViewModel.selectedDestination {
            let annotation = MKPointAnnotation()
            annotation.coordinate = destination.coordinate
            annotation.title = destination.startingLocationName
            mapView.addAnnotation(annotation)
        }
        
        // Set map region to selected destination or fallback
        if let selectedDestination = mapViewModel.startingLocationViewModel.selectedDestination {
            let region = MKCoordinateRegion(
                center: selectedDestination.coordinate,
                latitudinalMeters: 500,
                longitudinalMeters: 500
            )
            mapView.setRegion(region, animated: true)
        } else if let userLocation = mapViewModel.userLocation {
            // Fallback to user location if no destination is selected
            let region = MKCoordinateRegion(
                center: userLocation,
                latitudinalMeters: 500,
                longitudinalMeters: 500
            )
            mapView.setRegion(region, animated: true)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            if let polyline = overlay as? MKPolyline {
                let renderer = MKPolylineRenderer(polyline: polyline)
                renderer.strokeColor = .blue
                renderer.lineWidth = 4
                return renderer
            }
            return MKOverlayRenderer(overlay: overlay)
        }
    }
}

//#Preview {
//    MapView()
//}
