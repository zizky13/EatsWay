//
//  Destination.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 15/05/25.
//

import SwiftUI

struct DestinationCard: View {
    @State var startingLocationName: String
    @State var backgroundColor: Color
    @State var distanceFromUser: Double

    var body: some View {
        Button (action: {
            withAnimation{
                print("hello")
            }
        }) {
            HStack {
                Spacer()
                    .frame(width: 24)
                VStack {
                    Image(systemName: "mappin")
                        .foregroundColor(.gray)
                        .font(.system(size: 24))
                    Text(String(distanceFromUser) + " km")
                        .font(.system(size: 8))
                }
                Spacer()
                    .frame(width: 24)
                Text(startingLocationName)
                    .font(.system(size: 14, weight: .bold))
                Spacer()
            }
            .padding(.horizontal, 8)
            .frame(width: 393, height: 44)
            .background(backgroundColor.opacity(0.3))
        }
    }
}

#Preview {
    DestinationCard(
        startingLocationName: "Destination", backgroundColor: Color.ourBlue,
        distanceFromUser: 0.02)
}
