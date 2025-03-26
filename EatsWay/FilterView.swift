//
//  SwiftUIView.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 25/03/25.
//

import SwiftUI

func testButton() {
    print("Testing Button")
}

struct FilterView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //==== ADD CONDITIONAL (ONLY SHOW IF IT IS LANDING PAGE) ====
            Text("Help us set your taste and budget!")
                .font(.system(size: 26, weight: .bold))
                .padding(.bottom, 30)

            VStack(alignment: .leading) {
                Text("Cuisine Categories")
                    .font(.system(size: 22, weight: .bold))
                    .padding(.bottom, 20)

                HStack {
                    ToggleButton(buttonText: "Rice", action: testButton)
                        .padding(.trailing, 15)
                    ToggleButton(buttonText: "Noodles", action: testButton)
                        .padding(.trailing, 15)
                    ToggleButton(buttonText: "Porridge", action: testButton)
                        .padding(.trailing, 15)

                }.padding(.bottom, 10)

                HStack {
                    ToggleButton(buttonText: "Broth", action: testButton)
                        .padding(.trailing, 15)
                    ToggleButton(buttonText: "Chicken", action: testButton)
                        .padding(.trailing, 15)
                    ToggleButton(buttonText: "Beverages", action: testButton)
                        .padding(.trailing, 15)

                }
                .padding(.bottom, 15)
            }
            .padding(.bottom, 54)

            VStack(alignment: .leading) {
                Text("Price")
                    .font(.system(size: 22, weight: .bold))
                    .padding(.bottom, 20)

                HStack {
                    //==== BUTUH CONDITIONAL TO PREVENT CLICKING BOTH OPTIONS =====
                    ToggleButton(buttonText: "Low to High", action: testButton)
                        .padding(.trailing, 15)
                    ToggleButton(buttonText: "High to Low", action: testButton)
                        .padding(.trailing, 15)

                }.padding(.bottom, 15)
            }

            Spacer()
            HStack {
                Spacer()
                Button("Save") {

                }
                .foregroundStyle(Color.white)
                .padding(10)
                Spacer()
            }
            .background(Color.gray)
            .cornerRadius(10)
        }
        .padding(20)
        .padding(.top, 30)
    }
}

#Preview {
    FilterView()
}
