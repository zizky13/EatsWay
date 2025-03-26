//
//  Page Detail.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 25/03/25.
//

import SwiftUI

struct Page_Detail: View {
    
    var judul: String
    var gambar: String
    var harga: String
    var deskripsi: String
    
    var body: some View {
        
        NavigationStack{
            VStack (alignment: .leading){
//               Text(judul)
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .padding(.leading, 25)
//                    .padding(.top, 20)
                
                Image(gambar)
                    .resizable()
                    .frame(width: 410, height: 300)
                    .aspectRatio(contentMode: .fill)
    //                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
                
                HStack {
                    Text(harga)
                        .font(.title)
                        .bold()
                    Spacer()
                    HStack{
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
                
                Text("About " + judul)
                    .font(.title2)
                    .bold()
                    .padding(.top, 5)
                    .padding(.leading, 25)
                
                Text (deskripsi)
                    .font(.headline)
                    .padding(.top, 3)
                    .frame(width: 345)
                    .padding(.leading, 25)
                
                Text("What They Say")
                    .font(.title2)
                    .bold()
                    .padding(.top, 15)
                    .padding(.leading, 25)
                
                LazyHStack {
                    Review(user: "Althea", textreview: "Makanannya enak semua, mantap Mama Djempol")
                    Review(user: "Althea", textreview: "Makanannya enak semua, mantap Mama Djempol")
                }
                Spacer()
            }
            .navigationTitle(judul)
            

        }
       
        
//        .scrollTargetLayout()
//        .scrollTargetBehavior(.viewAligned)
//        .scrollBounceBehavior(.basedOnSize)
        
    }
}

#Preview {
    Page_Detail(judul: "Mama Djempol", gambar:"Mama Djempol", harga: "30-40K", deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
}
