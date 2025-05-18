//
//  DestinationPickingView.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 18/05/25.
//

import SwiftUI

struct DestinationPickingView: View {
    @StateObject private var startingLocationViewModel =
        StartingLocationViewModel()

    var body: some View {
        ZStack {
            MapView(
                mapViewModel: MapViewModel(
                    startingLocationViewModel: startingLocationViewModel))
            VStack {
                Spacer()
                StartingLocationPicker(viewModel: startingLocationViewModel)
                    .frame(height: 300)
            }
        }  // Adjust height as needed
        .ignoresSafeArea()
    }
}

#Preview {
    DestinationPickingView()
}
