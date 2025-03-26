//
//  Label.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 26/03/25.
//

import SwiftUI

struct CustomLabel: View {
    
    var nama: String
    
    var body: some View {
        Label {
            Text(nama)
                .foregroundStyle(.primary)
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.vertical, 7)
                .padding(.horizontal, 10)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } icon: {
        }
    }
}

#Preview {
    CustomLabel(nama: "Rice")
}
