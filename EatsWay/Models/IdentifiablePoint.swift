//
//  IdentifiablePoint.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 14/05/25.
//

import Foundation
import MapKit

struct IdentifiablePoint: Identifiable {
    let id: UUID
    let coordinate: CLLocationCoordinate2D
}
