//
//  StepsCard.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 09/04/25.
//

import SwiftUI

struct StepsCard: View {
    @State var step: String
    @State var image: String
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(step)
                .font(.headline)
                .padding(.top, 3)
                .padding(.leading, 7)

            Image(image)
                .resizable()
                .frame(width: 340, height: 200)
                .cornerRadius(10)
                .padding(.top, 3)
                .padding(.leading, 7)
        }
        .frame(maxWidth: 340)
        
    }
}

#Preview {
    StepsCard(step: "1. Keluar dari pintu depan Apple Academy. Wkwkwkkwkwkwkwkkwkwkwkwkwkkwkwkwkwkwkwkkwkwkwkwkwkwkkwkwkwkwk", image: "STEP1")
}
