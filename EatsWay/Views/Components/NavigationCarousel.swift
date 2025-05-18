//
//  NavigationCarousel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 18/05/25.
//

import SwiftUI

struct NavigationCarousel: View {
    let steps: [DirectionModel]
    @State private var currentIndex = 0
    
    var body: some View {
            VStack {
                ZStack {
                    ForEach(steps.indices, id: \.self) { index in
                        NavigationCard(step: steps[index])
                            .scaleEffect(scale(for: index))
                            .offset(x: offset(for: index))
                            .zIndex(zIndex(for: index))
                            .animation(.easeInOut(duration: 0.3), value: currentIndex)
                    }
                }
                

                Button("Next") {
                    if currentIndex < steps.count - 1 {
                        currentIndex += 1
                    }
                }
                .padding()
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
                .frame(width: 100, height: 40)
                .background(Color.blue)
                .cornerRadius(8)
                
                if (currentIndex > 0) {
                    Button("Prev") {
                        if currentIndex < steps.count - 1 {
                            currentIndex -= 1
                        }
                    }
                    .padding()
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 100, height: 40)
                    .background(Color.blue)
                    .cornerRadius(8)
                }
                
            }
        }
    
    // Scale effect: current card is larger
        private func scale(for index: Int) -> CGFloat {
            let diff = abs(index - currentIndex)
            return diff == 0 ? 1.0 : 0.9
        }

        // Offset: positions cards horizontally
        private func offset(for index: Int) -> CGFloat {
            let diff = index - currentIndex
            return CGFloat(diff) * 320
        }

        // Z-index: ensures current card is on top
        private func zIndex(for index: Int) -> Double {
            return index == currentIndex ? 1 : 0
        }
}

#Preview {
    NavigationCarousel(steps: [DirectionModel(instruction: "Go to hell", image: "Althea"), DirectionModel(instruction: "Go to Heaven", image: "Althea"), ])
}
