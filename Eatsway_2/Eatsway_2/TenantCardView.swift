//
//  TenantCard.swift
//  Eatsway_2
//
//  Created by Callista Althea Hartanto on 08/05/25.
//

import SwiftUI

struct TenantCardItem: View {
    var imageName: String
    var name: String
    var rating: Double
    var totalrating: String
    var price: String
    var tags: [String]

    var body: some View {
        NavigationLink(destination: TenantDetailView()) {
            HStack(alignment: .top, spacing: 20) {
                // Image Thumbnail
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 140, height: 142)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.darkGray, lineWidth: 1)
                    )
            
                
                // Details
                VStack(alignment: .leading, spacing: 10) {
                    // Tenant Name
                    Spacer()
                    
                    Text(name)
                        .font(Font.custom("TimesNewRomanPSMT", size: 23))
                        .foregroundColor(.greenApp)
                        .fontWeight(.bold)
                    
                    // Price
                    Text(price)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .lineLimit(1)
                    
                    // Tags
                    Text(tags.joined(separator: ", "))
                        .font(.footnote)
                        .foregroundColor(.darkGray)
                        .lineLimit(1)
                    
                    // Rating & Price
                    HStack(spacing: 7) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.greenApp)
                            .frame(width: 14, height: 19)
                            .font(.subheadline)
                        Text(String(format: "%.1f", rating))
                            .font(.subheadline)
                            .foregroundColor(.black)
                        
                        Text("| \(totalrating)")
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            
            .padding(.horizontal, 0)
            .frame(width: 370, height: 140)
            .background(Color(.white))
            .cornerRadius(14)
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.darkGray, lineWidth: 1)
            )
            
            
            
            
        }
    }
}

#Preview {
    NavigationView {
        TenantCardItem(imageName: "Mama Djempol", name: "Mama Djempol", rating: 4.7, totalrating: "20+ ratings", price: "Rp 20.000 - Rp 30.000", tags: ["Rice", "Chicken", "Porridge"])
    }
}
