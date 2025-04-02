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
    let tenants: [TenantModel]
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
                                NavigationLink(destination: PageDetail(namaTenant: tenant.namaTenant, gambar: tenant.gambar, harga: tenant.harga, deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")){
                                    
                                    TenantCard(
                                        gambar: tenant.gambar,
                                        namaTenant: tenant.namaTenant,
                                        harga: tenant.harga,
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
                                TenantCard(
                                    gambar: tenant.gambar,
                                    namaTenant: tenant.namaTenant,
                                    harga: tenant.harga,
                                    labels: tenant.labels)
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
    NavigationStack {
        HomePage(tenants: TenantModel.sampleData)
    }
}
