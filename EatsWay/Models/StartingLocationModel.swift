//
//  DestinationModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 16/05/25.
//

import CoreLocation
import Foundation
import SwiftUI

struct StartingLocationModel: Identifiable {
    let startingLocationName: String
    let backgroundColor: Color
    let distanceFromUser: Double
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let directions: [DirectionModel]
}
