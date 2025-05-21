//
//  Data.swift
//  Eatsway_2
//
//  Created by Callista Althea Hartanto on 13/05/25.
//

//import SwiftData
//
//@Model
//class FoodStall {
//    var name: String
//    var minPrice: Int
//    var maxPrice: Int
//    var categories: [String]
//    var rating: Double
//    var ratingsCount: Int
//    var imageName: String
//
//    init(name: String, minPrice: Int, maxPrice: Int, categories: [String], rating: Double, ratingsCount: Int, imageName: String) {
//        self.name = name
//        self.minPrice = minPrice
//        self.maxPrice = maxPrice
//        self.categories = categories
//        self.rating = rating
//        self.ratingsCount = ratingsCount
//        self.imageName = imageName
//    }
//
//    var priceRangeLabel: String {
//        "Rp \(minPrice.formattedWithSeparator) - Rp \(maxPrice.formattedWithSeparator)"
//    }
//}




import Foundation
import SwiftData

@Model
class FoodStall: Identifiable {
    var id: UUID
    var name: String
    var priceRange: String
    var categories: [String]
    var rating: Double
    var ratingsCount: Int
    var imageName: String

    init(id: UUID = UUID(), name: String, priceRange: String, categories: [String], rating: Double, ratingsCount: Int, imageName: String) {
        self.id = id
        self.name = name
        self.priceRange = priceRange
        self.categories = categories
        self.rating = rating
        self.ratingsCount = ratingsCount
        self.imageName = imageName
    }
}

