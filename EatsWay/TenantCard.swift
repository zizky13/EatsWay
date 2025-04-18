//
//  Food Card.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftData
import SwiftUI

struct TenantCard: View {

    var gambar: String
    var namaTenant: String
    var minPrice: Int
    var maxPrice: Int
    var labels: Set<String>

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(gambar)
                .resizable()
                .frame(width: 170, height: 110)
                .cornerRadius(10)

            Text(namaTenant)
                .font(.title3)
                .bold()
                .padding(.top, 4)

            Text("Rp \(minPrice)k - \(maxPrice)k")
                .font(.body)
                .padding(.top, 2)

            HStack {
                ForEach(0..<4) { _ in
                    Image(systemName: "star.fill")
                        .frame(width: 15)
                        .foregroundColor(.yellow)
                }
                ForEach(0..<1) { _ in
                    Image(systemName: "star")
                        .frame(width: 15)
                        .foregroundColor(.yellow)
                }
            }
            .padding(.top, 2)

            ScrollView(.horizontal) {
                HStack {
                    ForEach(Array(labels), id: \.self) { label in
                        CustomLabel(nama: label)
                            .padding(.leading, 1)
                    }
                }
            }
            .padding(.top, 8)

        }
        .padding(20)
        .frame(width: 210, height: 280, alignment: .center)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 0.5)

    }
}

#Preview {
    TenantCard(
        gambar: "Mama Djempol", namaTenant: "Mama Djempol", minPrice: 10,
        maxPrice: 40,
        labels: ["Rice", "Chicken", "Fish", "Test", "Jempal", "Jempil"])
}
