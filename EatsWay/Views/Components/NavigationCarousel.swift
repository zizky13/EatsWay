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
            .gesture(
                DragGesture()
                    .onEnded { value in
                        let translation = value.translation.width
                        let threshold: CGFloat = 50
                        
                        if translation < -threshold && currentIndex < steps.count - 1 {
                            currentIndex += 1
                        } else if translation > threshold && currentIndex > 0 {
                            currentIndex -= 1
                        }
                    }
            )
            
            if !steps.isEmpty {
                HStack(spacing: 8) {
                    ForEach(steps.indices, id: \.self) { index in
                        Circle()
                            .frame(width: index == currentIndex ? 10 : 6, height: index == currentIndex ? 10 : 6)
                            .foregroundColor(index == currentIndex ? .blue : .gray.opacity(0.5))
                            .animation(.easeInOut(duration: 0.2), value: currentIndex)
                    }
                }
                .padding(8)
            }
        }
    }
    
    private func scale(for index: Int) -> CGFloat {
        let diff = abs(index - currentIndex)
        return diff == 0 ? 1.0 : 0.9
    }
    
    private func offset(for index: Int) -> CGFloat {
        let diff = index - currentIndex
        return CGFloat(diff) * 320
    }
    
    private func zIndex(for index: Int) -> Double {
        return index == currentIndex ? 1 : 0
    }
}

#Preview {
    NavigationCarousel(steps: [DirectionModel(instruction: "Go to hell", image: "Althea"), DirectionModel(instruction: "Go to Heaven", image: "Althea"), ])
}
