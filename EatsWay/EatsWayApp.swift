//
//  EatsWayApp.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 24/03/25.
//

import SwiftUI
import SwiftData

@main
struct EatsWayApp: App {
    @State var user: UserModel = UserModel(name: "Herman", selectedLabels: ["Rice", "Broth"], priceSorting: .none)
    @State var tenants: [TenantModel] = TenantModel.sampleData
    @State var filteredTenants: [TenantModel] = TenantModel.sampleData
    
    var body: some Scene {
        WindowGroup {
            HomePage(tenants: $tenants, filteredTenants: $filteredTenants, user: $user)
        }
    }
}
