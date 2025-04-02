//
//  ContentView.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 24/03/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        PageDetail(namaTenant: "Mama Djempol", gambar:"Mama Djempol", harga: "30-40K", deskripsi: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
    }
}

#Preview {
    //    ContentView()
    //        .modelContainer(for: Item.self, inMemory: true)
        ContentView()
}
