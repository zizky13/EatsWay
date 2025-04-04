//
//  TenantViewModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 04/04/25.
//

import Foundation

class TenantViewModel: Identifiable {
    let tenant: TenantModel
    
    var id: UUID { tenant.id }
    var name: String { tenant.name }
    var formattedPriceRange: String {
        "Rp \(tenant.minPrice)k - Rp \(tenant.maxPrice)k"
    }
    
    init(tenant: TenantModel) {
        self.tenant = tenant
    }
        
}
