//
//  HomePage.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 26/03/25.
//

import SwiftUI

struct HomePage: View {
    @State var tenants: [TenantModel] = TenantSeeder.sampleData
    @State var filteredTenants: [TenantModel] = [TenantModel]()
    @State var user: UserModel
    @State private var isShowingFilterPage = false

    var body: some View {
        NavigationStack {
            VStack {
                    HStack {
                        Text("It's Time to Eat!!")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        Spacer()
                        Spacer()

                        Button(action: {
                            isShowingFilterPage = true
                        }) {
                            Image(systemName: "line.3.horizontal.decrease")
                                .font(.title2)
                                .foregroundColor(.blue)
                        }
                        Spacer()
                    }
                    .padding(.top, 16)
                    .padding(.leading, 16)

                    ScrollView(.vertical) {
                        VStack(alignment: .leading) {
                            // Header

                            Text("Recommendations")
                                .font(.title2)
                                .bold()
                                .padding(.top, 5)

                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(filteredTenants) { tenant in
                                        NavigationLink(
                                            destination: PageDetail(tenant: tenant)
                                        ) {
                                            TenantCard(
                                                gambar: tenant.image,
                                                namaTenant: tenant.name,
                                                minPrice: tenant.minPrice,
                                                maxPrice: tenant.maxPrice,
                                                labels: tenant.labels
                                            )
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                            }
                            .padding(.top, 10)

                            //NEED TO APPLY RATING SORTING FEATURE
                            Text("Top Ratings")
                                .font(.title2)
                                .bold()
                                .padding(.top, 20)

                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(filteredTenants) { tenant in
                                        NavigationLink(
                                            destination: PageDetail(tenant: tenant)
                                        ) {
                                            TenantCard(
                                                gambar: tenant.image,
                                                namaTenant: tenant.name,
                                                minPrice: tenant.minPrice,
                                                maxPrice: tenant.maxPrice,
                                                labels: tenant.labels
                                            )
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                                .padding(.top, 10)
                            }
                        }
                    }
                    .sheet(isPresented: $isShowingFilterPage) {
                        NavigationStack {
                            FilterView(
                                isShowingFilterPage: $isShowingFilterPage,
                                selectedCuisines: $user.selectedLabels,
                                priceSorting: $user.priceSorting, tenants: $tenants,
                                filteredTenants: $filteredTenants, user: $user,
                                calledFromHome: true
                            )
                            .toolbar {
                                ToolbarItem(placement: .cancellationAction) {
                                    Button("Cancel") {
                                        isShowingFilterPage = false
                                    }
                                }
                            }
                        }
                    }
                    .padding(.leading, 16)
            }
        }
        
    }

}

#Preview {
    @Previewable @State var tenants: [TenantModel] = TenantSeeder.sampleData
    @Previewable @State var filteredTenants: [TenantModel] = TenantSeeder
        .sampleData
    @Previewable @State var user: UserModel = .init(
        name: "Joko", selectedLabels: [], priceSorting: .none)
    NavigationStack {

        HomePage(
            filteredTenants: filteredTenants, user: user)
    }
}
