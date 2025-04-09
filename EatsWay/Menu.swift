//
//  Menu.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftUI
import SwiftData

struct Menu: View {
    
    var name: String
    var image: String
    var description: String
    var price: Int
    
    var body: some View {
        HStack(spacing: 15){
            Image(image)
                .resizable()
//                .scaledToFit()
                .aspectRatio(CGSize(width: 100, height: 100), contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing:8) {
                Text(name)
                    .font(.title3)
                    .bold()
                Text(description)
                    .font(.body)
                    .lineLimit(2)
                Text("Rp. \(price)k")
                    .font(.subheadline)
                    .bold()
            }
        }
        .frame(width: 350, height: 110, alignment: .leading)
//        .padding(15)

    }
}

#Preview {
    Menu(name: "Ayam Lada Hitam", image: "Ayam Lada Hitam", description: "Ayam lada Hitam", price: 14)
}
