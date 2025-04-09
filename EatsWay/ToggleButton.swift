//
//  CustomButton.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 26/03/25.
//

import SwiftUI

struct ToggleButton: View {
    let buttonText: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: {
            withAnimation {
                action()
            }
        }) {
            Text(buttonText)
                .font(.system(size: 13))
                .padding(10)
                .foregroundColor(isSelected ? .white : Color.ourOrange)
                .background(isSelected ? Color.ourOrange : Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.ourOrange, lineWidth: 2)
                )
                .cornerRadius(10)
        }
    }
}


#Preview {
    ToggleButton(buttonText: "Test", isSelected: false, action: {
        print("Button tapped!")
    })
}
