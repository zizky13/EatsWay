//
//  MapView.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 13/05/25.
//

import MapKit
import SwiftUI
import CoreLocation

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
        var body: some View {
            ZStack (alignment: .bottom) {
                Map()
                    .onAppear{
                        let startingLocation = CLLocationCoordinate2D(
                            latitude: 37.3318,
                            longitude: -121.8863
                        )
                    }
                    
                    
                
                DestinationPicker()
            }
            .ignoresSafeArea(.container)
        }
}

#Preview {
    MapView()
}
