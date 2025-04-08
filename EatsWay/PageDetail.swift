//
//  Page Detail.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftUI

struct PageDetail: View {
    var tenant: TenantModel
    
    func aggregatePrice(_ price: Int){
            print("current price: \(price)")
    }

    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView(.vertical) {
                    VStack(alignment: .leading) {

                        Image(tenant.image)
                            .resizable()
                            .frame(width: 410, height: 300)
                            .aspectRatio(contentMode: .fill)
                            

                        HStack {
                            Text(
                                "Rp \(tenant.minPrice) - Rp \(tenant.maxPrice)k"
                            )
                            .font(.title)
                            .bold()
                            Spacer()
                            HStack {
                                ForEach(0..<4) { _ in
                                    Image(systemName: "star.fill")
                                        .frame(width: 15)
                                        .foregroundColor(.yellow)
                                }
                                Image(systemName: "star")
                                    .frame(width: 15)
                                    .foregroundColor(.yellow)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.leading, 25)
                        .padding(.trailing, 25)

                        Text("About " + tenant.name)
                            .font(.title2)
                            .bold()
                            .padding(.top, 5)
                            .padding(.leading, 25)

                        Text(tenant.description)
                            .font(.headline)
                            .padding(.top, 3)
                            .frame(width: 345)
                            .padding(.leading, 25)

                        Text("What They Say")
                            .font(.title2)
                            .bold()
                            .padding(.top, 15)
                            .padding(.leading, 25)

                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(tenant.reviews) { review in
                                    Review(
                                        picture: review.picture,
                                        user: review.user,
                                        textreview: review.textreview,
                                        rating: review.rating)
                                    .padding(.leading, 10)

                                }
                            }
                            .padding(.leading, 25)
                        }

                        Text("Menu")
                            .font(.title2)
                            .bold()
                            .padding(.top, 15)
                            .padding(.leading, 25)
                        ForEach(tenant.menus) { menu in
                            Menu(
                                menu: menu.name,
                                deskripsimenu:
                                    menu.description, harga: "Rp \(menu.price)k"
                            )
                            .padding(.leading, 25)
                        }

                    }

                    Spacer()
                }
                .navigationTitle(tenant.name)

            }

            VStack {
                Spacer()
                HStack {
                    Button {

                    } label: {
                        Text("AR Navigation")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 15)
                            .foregroundStyle(.white)
                            .background(.gray, in: .capsule)
                    }
                }
                .frame(width: .infinity, height: 0)
                .padding()
            }

        }

        //        .scrollTargetLayout()
        //        .scrollTargetBehavior(.viewAligned)
        //        .scrollBounceBehavior(.basedOnSize)

    }
}

#Preview {
    var tenant: TenantModel = TenantModel.sampleData[0]
    PageDetail(tenant: tenant)
}
