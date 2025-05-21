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
                .scaledToFill()
                .cornerRadius(20)
            
            VStack {
                ZStack(alignment: .topLeading) {
                    PartiallyRoundedRectangle(
                        cornerRadius: 20, roundedCorners: [.topLeft, .topRight]
                    )
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.black.opacity(0.7), Color.white.opacity(0.3),
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    Text("EatsWay")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(Color.white)
                        .padding(24)
                }
                .frame(maxHeight: 75)
                Spacer()
                
                ZStack {
                    PartiallyRoundedRectangle(
                        cornerRadius: 20, roundedCorners: [.bottomLeft, .bottomRight]
                    )
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                    Color.black.opacity(0.6), Color.white.opacity(0.3),
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
                .frame(maxHeight: 111)
                
            }
            
        }
        .padding()
        .frame(height: 624)
    }
}

#Preview {
    NavigationCard(step: DirectionModel(instruction: "Go to hell", image: "STEP1"))
}
