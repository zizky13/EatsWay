//
//  TenantFilterModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 04/04/25.

import Foundation


struct UserModel {
    var name: String
    var selectedLabels: Set<String>
    var priceSorting: PriceSortingOption
    
    init(name: String = "", selectedLabels: Set<String> = [], priceSorting: PriceSortingOption = .none) {
        self.name = name
        self.selectedLabels = selectedLabels
        self.priceSorting = priceSorting
    }
}

enum PriceSortingOption: String, CaseIterable, Hashable {
    case none = "None"
    case lowToHigh = "Low to High"
    case highToLow = "High to Low"
}
