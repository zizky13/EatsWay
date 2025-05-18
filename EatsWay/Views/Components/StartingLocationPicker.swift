//
//  StartingLocationPicker.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 15/05/25.
//

import CoreLocation
import SwiftUI

struct StartingLocationPicker: View {
    @ObservedObject var viewModel: StartingLocationViewModel = .init()
    @State private var navigateToCarousel = false

    var selectedDestination: StartingLocationModel? {
        viewModel.destinations.first {
            $0.id == viewModel.selectedDestinationID
        }
    }

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Choose your starting point")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.horizontal, 24)
            }

            List {
                ForEach(viewModel.destinations) { destination in
                    StartingLocationCard(
                        startingLocationName: destination.startingLocationName,
                        distanceFromUser: destination.distanceFromUser,
                        isSelected: Binding<Bool>(
                            get: {
                                destination.id
                                    == viewModel.selectedDestinationID
                            },
                            set: { newValue in
                                viewModel.selectedDestinationID =
                                    newValue ? destination.id : nil
                            }
                        ),
                        onTap: nil  // Optional: Remove or use for additional actions
                    )
                    .listRowInsets(
                        EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16)
                    )
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                }
            }
            .listStyle(.plain)

            Button(action: {
                navigateToCarousel = true
            }) {
                Text("Choose this location")
                    .font(.system(size: 12))
                    .padding(12)
                    .foregroundColor(.white)
                    .background(
                        selectedDestination != nil ? Color.ourBlue : Color.gray
                    )
                    .cornerRadius(12)
            }
            .disabled(selectedDestination == nil)
            .background(
                NavigationLink(
                    destination: NavigationCarousel(steps: selectedDestination?.directions ?? []),
                    isActive: $navigateToCarousel,
                    label: { EmptyView()}
                )
            )
        }
        .padding(.vertical, 12)
        .padding(.bottom, 12)
        .background(Color.white)
        .cornerRadius(24)
    }
}

#Preview {
    StartingLocationPicker()
}
