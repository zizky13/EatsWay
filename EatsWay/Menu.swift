//
//  Menu.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftUI
import SwiftData

struct Menu: View {
    
    var menu: String
    var deskripsimenu: String
    var harga: String
    
    var body: some View {
        HStack(spacing: 15){
            Image("Mama Djempol")
                .resizable()
//                .scaledToFit()
                .aspectRatio(CGSize(width: 100, height: 100), contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing:8) {
                Text(menu)
                    .font(.title3)
                    .bold()
                Text(deskripsimenu)
                    .font(.body)
                    .lineLimit(2)
                Text(harga)
                    .font(.subheadline)
                    .bold()
            }
        }
        .frame(width: 350, height: 110, alignment: .leading)
        .padding(15)

    }
}

#Preview {
    Menu(menu: "Sapi Lada Hitam", deskripsimenu: "Seporsi sapi lada hitam dengan nasi.", harga: "Rp 14.000")
}
