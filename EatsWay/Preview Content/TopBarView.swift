//
//  TopBarView.swift
//  ARLocationTest
//
//  Created by Louise Fernando on 08/04/25.
//
import SwiftUI

struct TopBarView: View {
    var locationTitle: String = "Pantry"
    var locationSubtitle: String = "Apple Developer Academy"
    var backAction: () -> Void

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Button(action: backAction) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .padding(15)
                    .background(Circle().fill(Color.blue))
            }

            VStack(alignment: .leading, spacing: 2) {
                Text(locationTitle)
                    .font(.title2).bold()
                    .foregroundColor(.white)
                Text(locationSubtitle)
                    .font(.body)
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(Color.orange)
            .cornerRadius(10)

            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 20) // Sesuaikan untuk notch
    }
}
