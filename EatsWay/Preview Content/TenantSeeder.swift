//
//  TenantSample.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 02/04/25.
//

import Foundation

struct TenantSeeder {
    static let sampleData: [TenantModel] = [
        TenantModel(
            image: "Mama Djempol", name: "Mama Djempol", maxPrice: 40,
            minPrice: 5, description: "Lorem ipsum dolor amet",
            labels: ["Chicken", "Broth", "Rice", "Beverage"],
            menus: [
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10),
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10),
            ],
            reviews: [
                ReviewModel(
                    picture: "Althea", user: "Althea",
                    textreview: "Lorem ipsum", rating: 4)
            ]),
        TenantModel(
            image: "Mama Djempol", name: "Mama Djempil", maxPrice: 35,
            minPrice: 25, description: "Lorem ipsum dolor amet",
            labels: ["Rice", "Chicken"],
            menus: [
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10),
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10),
            ],
            reviews: [
                ReviewModel(
                    picture: "Althea", user: "Althea",
                    textreview: "Lorem ipsum", rating: 4)
            ]),
        TenantModel(
            image: "Mama Djempol", name: "Mama Djampal", maxPrice: 40,
            minPrice: 13, description: "Lorem ipsum dolor amet",
            labels: ["Rice", "Porridge"],
            menus: [
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10),
                MenuModel(
                    name: "Mie Ayam", image: "Mama Djempol",
                    description: "Lorem ipsum", price: 10),
            ],
            reviews: [
                ReviewModel(
                    picture: "Althea", user: "Althea",
                    textreview: "Lorem ipsum", rating: 4)
            ]),
    ]
}
