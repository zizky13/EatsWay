//
//  HomePage.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 26/03/25.
//

import SwiftUI

struct HomePage: View {
    
    
    var body: some View {
        
        ScrollView(.vertical){
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Hi Bello!")
                        .font(.largeTitle)
                        .bold()
                    Text("It's Time to Eat")
                        .font(.largeTitle)
                        .bold()
                    Text("Recommendations")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    
                    ScrollView (.horizontal){
                        HStack {
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                        }
                    }
                    .padding(.top, 10)
                    
                    
                    Text("Top Ratings")
                        .font(.title2)
                        .bold()
                        .padding(.top, 20)
                    
                    ScrollView (.horizontal){
                        HStack {
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                            TenantCard(image: "Mama Djempol", tenant: "Mama Djempol", harga: "Rp 30.000-40.000", label1: "Rice", label2: "Chicken")
                        }
                    }
                    .padding(.top, 10)

                   
                    
                }
            
        }
        
        
        
            Spacer()
            
            
        }
        

            .padding(.leading, 15)
        

        
        
        
        
    }
}

#Preview {
    HomePage()
}
