//
//  StartingLocationViewModel.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 18/05/25.
//

import CoreLocation
import Foundation
import SwiftUI

class StartingLocationViewModel: ObservableObject {
    @Published var selectedDestinationID: UUID? = nil
    @Published var destinations: [StartingLocationModel]
    var selectedDestination: StartingLocationModel? {
        destinations.first { $0.id == selectedDestinationID }
    }

    init(
        selectedDestinationID: UUID? = nil,
        destinations: [StartingLocationModel] =
            [
                StartingLocationModel(
                    startingLocationName: "Apple Developer Academy",
                    backgroundColor: Color.blue,
                    distanceFromUser: 0.04,
                    coordinate: CLLocationCoordinate2D(
                        latitude: -6.302200, longitude: 106.652559),
                    directions: [
                        DirectionModel(
                            instruction: "1. Keluar dari pintu depan Apple Academy.",
                            image: "STEP1"),
                        DirectionModel(
                            instruction:
                                "2. Dari pintu keluar Apple Developer Academy belok kiri untuk menuju ke arah basement.",
                            image: "STEP2"),
                        DirectionModel(
                            instruction:
                                "3. Lurus dan belok kanan untuk turun ke arah basement.",
                            image: "STEP3"),
                        DirectionModel(
                            instruction:
                                "4. Lurus terus dan turun menggunakan tangga atau lift.",
                            image: "STEP4"),
                        DirectionModel(
                            instruction:
                                "5. Turun dari tangga, lalu belok kanan.",
                            image: "STEP5"),
                        DirectionModel(
                            instruction: "6. Jalan menuju lorong kecil di sebelah lift.",
                            image: "STEP6"),
                        DirectionModel(
                            instruction: "7. Ikuti jalan hingga menemui pintu kaca, lalu belok kiri.", image: "STEP7"),
                        DirectionModel(
                            instruction:
                                "8. Terus ikuti jalan hingga menemui logo Green Eatery.",
                            image: "STEP8"),
                        DirectionModel(
                            instruction: "9. Belok kiri menuju pintu masuk Green Eatery.",
                            image: "STEP9"),
                        DirectionModel(
                            instruction: "10. Belok kanan untuk masuk ke Green Eatery.",
                            image: "STEP10"),
                        DirectionModel(
                            instruction:
                                "11. Selamat, kamu telah sampai di Green Eatery!",
                            image: "STEP11")
                    ]
                ),
                StartingLocationModel(
                    startingLocationName: "Lobby GOP 9",
                    backgroundColor: Color.red,
                    distanceFromUser: 0.10,
                    coordinate: CLLocationCoordinate2D(
                        latitude: -6.302593, longitude: 106.652134),
                    directions: [
                        DirectionModel(
                            instruction: "1. Dari metal detector, lurus hingga menemui bangunan merah, lalu belok kanan.",
                            image: "LOBBY1"),
                        DirectionModel(
                            instruction:
                                "2. Lurus terus untuk turun ke bawah (bisa menggunakan lift).",
                            image: "STEP4"),
                        DirectionModel(
                            instruction:
                                "3. Jika menggunakan tangga, telusuri tangga lalu belok kanan.",
                            image: "STEP5"),
                        DirectionModel(
                            instruction:
                                "4. Ikuti lorong kecil disamping lift untuk menuju basement.",
                            image: "STEP6"),
                        DirectionModel(
                            instruction: "5. Ikuti jalan hingga menemui pintu kaca, lalu belok kiri.", image: "STEP7"),
                        DirectionModel(
                            instruction:
                                "6. Terus ikuti jalan hingga menemui logo Green Eatery.",
                            image: "STEP8"),
                        DirectionModel(
                            instruction: "7. Belok kiri menuju pintu masuk Green Eatery.",
                            image: "STEP9"),
                        DirectionModel(
                            instruction: "8. Belok kanan untuk masuk ke Green Eatery.",
                            image: "STEP10"),
                        DirectionModel(
                            instruction:
                                "9. Selamat, kamu telah sampai di Green Eatery!",
                            image: "STEP11")
                    ]
                ),
                StartingLocationModel(
                    startingLocationName: "SML Plaza",
                    backgroundColor: Color.green,
                    distanceFromUser: 1.5,
                    coordinate: CLLocationCoordinate2D(
                        latitude: -6.302281, longitude: 106.651281
                    ),
                    directions: [
                        DirectionModel(
                            instruction: "1. Dari halte SML, pergi ke sebrang jalan.",
                            image: "SML1"),
                        DirectionModel(
                            instruction:
                                "2. Jalan lurus mengikuti kanopi hingga bertemu percabangan jalan.",
                            image: "SML2"),
                        DirectionModel(
                            instruction:
                                "3. Pada percabangan, ambil jalan sebelah kiri.",
                            image: "SML3"),
                        DirectionModel(
                            instruction:
                                "4. Lurus terus hingga akhir, lalu belok kanan menuju ruangan kaca.",
                            image: "SML4"),
                        DirectionModel(
                            instruction:
                                "5. Di dalam ruangan kaca, ambil tangga ke bawah di sebelah kanan.",
                            image: "SML5"),
                        DirectionModel(
                            instruction: "6. Turun menyusuri tangga hingga tepi lantai.",
                            image: "SML6"),
                        DirectionModel(
                            instruction: "7. Keluar dari pintu kaca, lalu belok kanan.", image: "SML7"),
                        DirectionModel(
                            instruction:
                                "8. Lurus terus hingga menemui percabangan jalan, lalu belok kanan.",
                            image: "SML8"),
                        DirectionModel(
                            instruction: "9. Lurus menuju logo Green Eatery.",
                            image: "SML9"),
                        DirectionModel(
                            instruction: "10. Selamat, kamu telah sampai di Green Eatery!",
                            image: "SML10"),
                    ]
                ),
            ]
    ) {
        self.selectedDestinationID = selectedDestinationID
        self.destinations = destinations
    }
}
