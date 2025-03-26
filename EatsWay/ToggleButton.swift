//
//  CustomButton.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 26/03/25.
//

import SwiftUI

struct ToggleButton: View {
    let buttonText: String // Button text passed as a parameter
    let action: () -> Void // Action passed as a parameter
    
    @State private var isTapped = false // State to track the button's toggle state
    
    var body: some View {
        Button(action: {
            withAnimation {
                isTapped.toggle() // Toggle the state
            }
            action() // Perform the custom action passed as a parameter
        }) {
            Text(buttonText)
                .font(.system(size: 13))
                .padding(10)
                .foregroundColor(isTapped ? .white : .gray) // Change text color
                .background(isTapped ? Color.gray : Color.clear) // Filled background when tapped
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 2) // Border
                )
                .cornerRadius(10)
        }
    }
}


#Preview {
    ToggleButton(buttonText: "Test", action: {
        print("Button tapped!")
    })
}
