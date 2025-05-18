//
//  Destination.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 15/05/25.
//

import SwiftUI

struct StartingLocationCard: View {
    let startingLocationName: String
    let distanceFromUser: Double
    @Binding var isSelected: Bool
    let onTap: (() -> Void)?  // Optional, in case additional tap actions are needed

    var body: some View {
        Button(action: {
            isSelected.toggle()  // Toggle selection state
            onTap?()  // Call onTap if provided
        }) {
            HStack {
                Spacer()
                    .frame(width: 24)
                VStack {
                    Image(systemName: "mappin")
                        .foregroundColor(.gray)
                        .font(.system(size: 24))
                    Text(String(format: "%.2f km", distanceFromUser))
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
            .background(isSelected ? Color.blue.opacity(0.3) : Color.white)
        }
    }
}

//#Preview {
//    DestinationCard(
//        startingLocationName: "Destination",
//        distanceFromUser: 0.02, isSelected: ) {
//            print("text")
//        }
//}
