//
//  TenantModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 02/04/25.
//

import Foundation


struct TenantModel: Identifiable {
    let id: UUID
    var image: String
    var name: String
    var maxPrice: Int //in thousand
    var minPrice: Int  //in thousand
    var description: String
    var labels: Set<String>
    var menus: [MenuModel]
    var reviews: [ReviewModel]
    
    init(id: UUID = UUID(), image: String, name: String, maxPrice: Int, minPrice: Int, description: String, labels: Set<String>, menus: [MenuModel], reviews: [ReviewModel]) {
        self.id = id
        self.image = image
        self.name = name
        self.maxPrice = maxPrice
        self.minPrice = minPrice
        self.description = description
        self.labels = labels
        self.menus = menus
        self.reviews = reviews
    }
}
