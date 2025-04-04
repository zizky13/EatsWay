//
//  ReviewModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 04/04/25.
//

import Foundation

struct ReviewModel: Identifiable {
    let id: UUID
    var picture: String
    var user: String
    var textreview: String
    var rating: Int
    
    init(id: UUID = UUID(), picture: String, user: String, textreview: String, rating: Int) {
        self.id = id
        self.picture = picture
        self.user = user
        self.textreview = textreview
        self.rating = rating
    }
}
