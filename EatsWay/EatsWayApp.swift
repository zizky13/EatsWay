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
        WindowGroup {
            HomePage(tenants: TenantModel.sampleData)
        }
    }
}
