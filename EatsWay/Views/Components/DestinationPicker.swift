//
//  DestinationPicker.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 15/05/25.
//

import SwiftUI

let destinations: [StartingLocationModel] = [
    StartingLocationModel(
        startingLocationName: "Mekkah", backgroundColor: Color.blue,
        distanceFromUser: 0.04),
    StartingLocationModel(
        startingLocationName: "Yerussalem", backgroundColor: Color.red,
        distanceFromUser: 0.10),
    StartingLocationModel(
        startingLocationName: "Berlin", backgroundColor: Color.green,
        distanceFromUser: 1.5),
]

struct DestinationPicker: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Choose your starting point")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.horizontal, 24)
            }

            LazyVStack {
                ForEach(destinations, id: \.self) { destination in
                    DestinationCard(
                        startingLocationName: destination.startingLocationName,
                        backgroundColor: destination.backgroundColor,
                        distanceFromUser: destination.distanceFromUser)
                    Divider()
                        .frame(width: 273, alignment: .center)
                }
            }
            .padding(.vertical, 24)

            Button(action: {
                withAnimation {
                    //
                }
            }) {
                Text("Choose this location")
                    .font(.system(size: 12))
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color.ourBlue)
                    .cornerRadius(12)
            }
        }
        .padding(.vertical, 12)
        .padding(.bottom, 12)
        .background(Color.white)
        .cornerRadius(24)
    }
}

#Preview {
    DestinationPicker()
}
