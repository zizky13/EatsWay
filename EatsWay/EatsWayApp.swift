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
    var body: some Scene {
        @State var tenants: [TenantModel] = TenantModel.sampleData
        
        WindowGroup {
            HomePage(tenants: $tenants)
        }
    }
}
