//
//  DirectionModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 09/04/25.
//

import Foundation

struct DirectionModel: Identifiable {
    var id: UUID
    var step: String
    var image: String
    
    init(id: UUID=UUID(), step: String, image: String) {
        self.id = id
        self.step = step
        self.image = image
    }
}
