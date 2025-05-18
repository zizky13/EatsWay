//
//  NavigationCard.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 16/05/25.
//

import SwiftUI

struct PartiallyRoundedRectangle: Shape {
    var cornerRadius: CGFloat
    var roundedCorners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: roundedCorners,  // Specify which corners to round
            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
        )
        return Path(path.cgPath)
    }
}

struct NavigationCard: View {
    let step: DirectionModel
    
    var body: some View {
        ZStack {
            // Background card with rounded corners
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 5)
            Image(step.image)
                .resizable()
                .scaledToFit()
            
            VStack {
                ZStack(alignment: .topLeading) {
                    PartiallyRoundedRectangle(
                        cornerRadius: 20, roundedCorners: [.topLeft, .topRight]
                    )
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.black.opacity(0.6), Color.white,
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    Text("Step 1")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(Color.white)
                        .padding(24)
                }
                .frame(maxHeight: 144)
                Spacer()
                
                ZStack {
                    PartiallyRoundedRectangle(
                        cornerRadius: 20, roundedCorners: [.bottomLeft, .bottomRight]
                    )
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.black.opacity(0.6), Color.white,
                            ]),
                            startPoint: .bottom,
                            endPoint: .top
                        )
                    )
                    Text(step.instruction)
                        .font(.system(size: 16))
                        .foregroundStyle(Color.white)
                        .padding(24)
                }
                .frame(maxHeight: 144)
                
            }
            
        }
        .padding()
    }
}

#Preview {
    NavigationCard(step: DirectionModel(instruction: "Go to hell", image: "Ayam Lada Hitam"))
}
