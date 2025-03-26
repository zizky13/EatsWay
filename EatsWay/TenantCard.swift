//
//  Food Card.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftData
import SwiftUI

struct TenantCard: View {

    var image: String
    var tenant: String
    var harga: String
    var label1: String
    var label2: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(image)
                .resizable()
                .frame(width: 170, height: 110)
                .cornerRadius(10)

            Text(tenant)
                .font(.title3)
                .bold()
                .padding(.top, 4)

            Text(harga)
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

            
            HStack (spacing: 10) {
                CustomLabel(nama: label1)
                CustomLabel(nama: label2)
            }.padding(.top, 8)
        }
        .padding(20)
        .frame(width: 210, height: 280, alignment: .center)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)

    }
}

#Preview {
    TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
}
