//
//  Review.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftUI
import SwiftData

struct Review: View {
    
    var picture: String
    var user: String
    var textreview: String
    var rating: Int
    

    var body: some View {
        VStack (alignment: .leading){
            HStack (spacing: 10){
                Image(picture)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing:5) {
                    Text(user)
                        .font(.headline)
                    HStack {
                        ForEach(0..<rating) { _ in
                            Image(systemName: "star.fill") //GANTI
                                .frame(width: 15)
                                .foregroundColor(.yellow)
                        }
                        ForEach(0..<5 - rating) { _ in
                            Image(systemName: "star") //GANTI
                                .frame(width: 15)
                                .foregroundColor(.yellow)
                        }
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
    Review(picture: "Althea", user: "Althea", textreview: "Makanannya enak semua, mantap Mama Djempol", rating: 4)
}
