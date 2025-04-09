//
//  Direction.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 07/04/25.
//

import SwiftUI

struct Direction: View {
    
    var title: String
    var step10: String
    var step11: String
    var step12: String

    var body: some View {
        
        NavigationStack{
        ScrollView (.vertical){
                
                VStack(alignment: .leading){
                    
                    Text("Ikutin arahan berikut untuk sampai di kantin Mama Djempol!")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)
                    
                    
                    Text("1. Keluar dari pintu depan Apple Academy.")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP1")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("2. Dari pintu keluar Apple Developer Academy belok kiri untuk menuju ke arah basement.")
                        .font(.headline)
                        .padding(.top, 3)
                        .frame(width: 345)
                        .padding(.leading, 7)

                    
                    Image("STEP2")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("3. Lurus dan belok kanan untuk turun ke arah basement.")
                        .font(.headline)
                        .padding(.top, 3)
                        .frame(width: 345)
                        .padding(.leading, 7)

                    
                    Image("STEP3")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("4. Lurus terus dan turun menggunakan tangga atau lift")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP4")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("5. Turun dari tangga belok kanan untuk keluar Basement")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP5")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("6. Keluar Basement belok kiri ke arah kantin.")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP6")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("7. Lurus terus sampai ujung.")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP7")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("8. Sampai di ujung kamu akan menemukan tempat Green Eatery lalu belok kiri")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP8")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text("9. Masuk ke dalam kantin Green Eatery")
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP9")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text(step10)
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP10")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text(step11)
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("STEP11")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Text(step12)
                        .font(.headline)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                    Image("Mama Djempol")
                        .resizable()
                        .frame(width: 360, height: 200)
                        .cornerRadius(10)
                        .padding(.top, 3)
                        .padding(.leading, 7)

                    
                }
                Spacer()

            }
            .navigationTitle(title)
        }
        


    }

}

#Preview {
    Direction(title:"Mama Djempol", step10:"10. Lurus sampai ujung lalu belok kanan", step11:"11. Kantin Mama Djempol ada di paling ujung sebelah kanan", step12:"12. Sampai di titik tujuan! Selamat menikmati")
}
