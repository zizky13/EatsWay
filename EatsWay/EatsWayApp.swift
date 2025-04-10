//
//  EatsWayApp.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 24/03/25.
//

import SwiftData
import SwiftUI

@main
struct EatsWayApp: App {
    @State var user: UserModel = UserModel(
        name: "", selectedLabels: [], priceSorting: .none)
    @State var tenants: [TenantModel] = TenantSeeder.sampleData
    @State var filteredTenants: [TenantModel] = TenantSeeder.sampleData
    @State var hasUserLogin: Bool = false
    @State var isShowingFilterPage: Bool = false

    var body: some Scene {
        WindowGroup {
            if hasUserLogin {
                HomePage(filteredTenants: filteredTenants,
                    user: user)
            } else {
                OnboardingView(user: $user, hasUserLogin: $hasUserLogin, isShowingFilterPage: $isShowingFilterPage, selectedCuisines: $user.selectedLabels, priceSorting: $user.priceSorting, tenants: $tenants, filteredTenants: $filteredTenants)
            }
        }
    }
}
