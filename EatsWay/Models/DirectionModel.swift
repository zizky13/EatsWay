//
//  DirectionModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 09/04/25.
//

import Foundation

struct DirectionModel: Identifiable {
    var id: UUID
    var instruction: String
    var image: String
    
    init(id: UUID=UUID(), instruction: String, image: String) {
        self.id = id
        self.instruction = instruction
        self.image = image
    }
}
