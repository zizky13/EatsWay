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
    @State var tenants: [TenantModel] = TenantModel.sampleData
    @State var filteredTenants: [TenantModel] = TenantModel.sampleData
    @AppStorage("hasUserLogin") var hasUserLogin: Bool = false
    @State var isShowingFilterPage: Bool = false

    var body: some Scene {
        WindowGroup {
            if hasUserLogin {
                HomePage(filteredTenants: filteredTenants,
                    user: user)
            } else {
                OnboardingView(user: $user, isShowingFilterPage: $isShowingFilterPage, selectedCuisines: $user.selectedLabels, priceSorting: $user.priceSorting, tenants: $tenants, filteredTenants: $filteredTenants)
            }
        }
    }
}
