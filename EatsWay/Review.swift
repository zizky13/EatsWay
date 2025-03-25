//
//  Review.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftUI
import SwiftData

struct Review: View {
    
    var user: String
    var textreview: String

    var body: some View {
        VStack (alignment: .leading){
            HStack (spacing: 10){
                Image(user)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing:5) {
                    Text("Althea")
                        .font(.headline)
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
            }
            Text(textreview)
                .font(.footnote)
                .lineLimit(2)

        }
        .padding(.all,15)
        .frame(width: 210, height: 130, alignment: .leading)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        
        
    }
}

#Preview {
    Review(user: "Althea", textreview: "Makanannya enak semua, mantap Mama Djempol")
}
