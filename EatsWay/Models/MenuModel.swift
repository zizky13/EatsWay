//
//  MenuModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 04/04/25.
//

import Foundation

struct MenuModel: Identifiable {
    let id: UUID
    var name: String
    var image: String
    var description: String
    var price: Int
    
    init(id: UUID = UUID(), name: String, image: String, description: String, price: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.description = description
        self.price = price
    }
}
