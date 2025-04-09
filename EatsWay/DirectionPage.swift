//
//  Direction.swift
//  EatsWay
//
//  Created by Callista Althea Hartanto on 07/04/25.
//

import SwiftUI

struct DirectionPage: View {
    var tenantName: String
    var steps: [DirectionModel]
    @State var navigateToAR: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {

                VStack(alignment: .leading) {

                    Text(
                        "Ikutin arahan berikut untuk sampai di kantin Mama Djempol!"
                    )
                    .font(.headline)
                    .padding(.top, 3)
                    .padding(.leading, 7)

                    ForEach(steps) {
                        step in
                        StepsCard(step: step.step, image: step.image)
                    }
                }
                Spacer()
                VStack {
                    Spacer()
                    HStack {
                        Button {
                            navigateToAR.toggle()
                        } label: {
                            Text("AR Navigation")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 15)
                                .foregroundStyle(.white)
                                .background(Color.ourBlue, in: .capsule)
                        }
                    }
                    .frame(width: .infinity, height: 0)
                    .padding()
                }
                .padding(.top, 10)
                Spacer()

            }
            .navigationTitle(tenantName)

            NavigationLink(
                destination: NavigationARView(),
                isActive: $navigateToAR
            ) {
                EmptyView()
            }
        }

    }

}

#Preview {
    NavigationStack {
        DirectionPage(
            tenantName: TenantSeeder.sampleData[0].name,
            steps: TenantSeeder.sampleData[0].directions)
    }
}
