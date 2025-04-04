//
//  HomePage.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 26/03/25.
//

// ==== CODE DIBAWAH BUAT APA YAAA??? ===== Zikar
//        TabView {
//                Button{
//
//                }   label: {
//                    Text("AR Navigation")
//                        .font(.headline)
//                        .frame(maxWidth: .infinity)
//                        .padding(.vertical, 15)
//                        .foregroundStyle(.white)
//                        .background(.gray, in: .capsule)
//            }
//
//        }
//        .frame(width:.infinity, height:40)

import SwiftUI

struct HomePage: View {
    @Binding var tenants: [TenantModel]
    @State var isShowingFilterPage: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    // Custom header with inline plus button
                    HStack {
                        Text("Hi Bello!")
                            .font(.largeTitle)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {
                            isShowingFilterPage = true
                        }) {
                            Image(systemName: "line.3.horizontal.decrease")
                                .font(.title2)
                                .foregroundColor(.blue)
                        }
                    }

                    Text("It's Time to Eat")
                        .font(.largeTitle)
                        .bold()
                        
                    Text("Recommendations")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)

                    ScrollView(.horizontal) {
                        HStack {
                            //Tenant price masi hardcoded
                            ForEach(tenants) { tenant in
                                NavigationLink(destination: PageDetail(namaTenant: tenant.name, gambar: tenant.image, minPrice: tenant.minPrice, maxPrice: tenant.maxPrice, deskripsi: tenant.description)){
                                    TenantCard(
                                        gambar: tenant.image,
                                        namaTenant: tenant.name,
                                        minPrice: tenant.minPrice,
                                        maxPrice: tenant.maxPrice,
                                        labels: tenant.labels)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                    .padding(.top, 10)

                    Text("Top Ratings")
                        .font(.title2)
                        .bold()
                        .padding(.top, 20)

                    ScrollView(.horizontal) {
                        HStack {
                            //Tenant price masi hardcoded
                            ForEach(tenants) { tenant in
                                NavigationLink(destination: PageDetail(namaTenant: tenant.name, gambar: tenant.image, minPrice: tenant.minPrice, maxPrice: tenant.maxPrice, deskripsi: tenant.description)){
                                    
                                    TenantCard(
                                        gambar: tenant.image,
                                        namaTenant: tenant.name,
                                        minPrice: tenant.minPrice,
                                        maxPrice: tenant.maxPrice,
                                        labels: tenant.labels)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                            
                        }
                    }
                    .padding(.top, 10)
                }
                .padding(.horizontal, 15) // Moved padding here for consistency
            }
            // Removed the toolbar item since we're placing the button directly in the HStack
        }
        .sheet(isPresented: $isShowingFilterPage){
            NavigationStack{
                FilterView()
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isShowingFilterPage = false
                            }
                        }
                    }
                
            }
        }
    }
}

#Preview {
    @Previewable @State var tenants = TenantModel.sampleData
    NavigationStack {
        HomePage(tenants: $tenants)
    }
}
