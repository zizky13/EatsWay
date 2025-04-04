//
//  TenantSample.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 02/04/25.
//

import Foundation

extension TenantModel {
    static let sampleData: [TenantModel] = [
        TenantModel(
            image: "Mama Djempol", name: "Mama Djempol", maxPrice: 40,
            minPrice: 10, description: "Lorem ipsum dolor amet",
            labels: ["Chicken", "Broth"],
            menus: [
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10)
            ],
            reviews: [
                ReviewModel(
                    picture: "Althea", user: "Althea",
                    textreview: "Lorem ipsum", rating: 4)
            ])
    ]
}
