//
//  TenantModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 02/04/25.
//

import Foundation


struct TenantModel: Identifiable {
    let id: UUID
    var gambar: String
    var namaTenant: String
    var harga: String
    var labels: [String]
    
    
    init(id: UUID = UUID(), gambar: String, namaTenant: String, harga: String, labels: [String]) {
        self.id = id
        self.gambar = gambar
        self.namaTenant = namaTenant
        self.harga = harga
        self.labels = labels
    }
}
