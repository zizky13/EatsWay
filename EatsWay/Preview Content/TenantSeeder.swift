//
//  TenantSample.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 02/04/25.
//

import Foundation

struct TenantSeeder {
    static let sampleData: [TenantModel] = [
        TenantModel(
            image: "Mama Djempol", name: "Mama Djempol", maxPrice: 14,
            minPrice: 4,
            description:
                "Mama Djempol adalah warung makan yang menyediakan berbagai jenis masakan rumahan dengan harga yang terjangkau. ",
            labels: ["Noodles", "Chicken", "Vegetables"],
            menus: [
                MenuModel(
                    name: "Ayam Lada Hitam", image: "Ayam Lada Hitam",
                    description:
                        "Oseng-oseng daging ayam dengan bumbu lada hitam",
                    price: 14),

                MenuModel(
                    name: "Ayam Rica-Rica", image: "Ayam Rica Rica",
                    description:
                        "Olahan ayam dengan bumbu rica-rica khas manado",
                    price: 11),

                MenuModel(
                    name: "Mie Goreng", image: "Mie Goreng",
                    description: "Mie goreng dengan bumbu lezat", price: 4),

                MenuModel(
                    name: "Kentang Mustofa", image: "Kentang Mustofa",
                    description: "Kentang kering dengan bumbu balado", price: 5),

            ],
            reviews: [
                ReviewModel(
                    picture: "Althea", user: "Althea",
                    textreview: "Kentangnya crispy banget!", rating: 5)
            ],
            directions: [
                DirectionModel(
                    step: "1. Keluar dari pintu depan Apple Academy.",
                    image: "STEP1"),
                DirectionModel(
                    step:
                        "2. Dari pintu keluar Apple Developer Academy belok kiri untuk menuju ke arah basement.",
                    image: "STEP2"),
                DirectionModel(
                    step:
                        "3. Lurus dan belok kanan untuk turun ke arah basement.",
                    image: "STEP3"),
                DirectionModel(
                    step:
                        "4. Lurus terus dan turun menggunakan tangga atau lift",
                    image: "STEP4"),
                DirectionModel(
                    step:
                        "5. Turun dari tangga belok kanan untuk keluar Basement",
                    image: "STEP5"),
                DirectionModel(
                    step: "6. Keluar Basement belok kiri ke arah kantin.",
                    image: "STEP6"),
                DirectionModel(
                    step: "7. Lurus terus sampai ujung.", image: "STEP7"),
                DirectionModel(
                    step:
                        "8. Sampai di ujung kamu akan menemukan tempat Green Eatery lalu belok kiri",
                    image: "STEP8"),
                DirectionModel(
                    step: "9. Masuk ke dalam kantin Green Eatery",
                    image: "STEP9"),
                DirectionModel(
                    step: "10. Lurus sampai ujung lalu belok kanan",
                    image: "STEP10"),
                DirectionModel(
                    step:
                        "11. Kantin Mama Djempol ada di paling ujung sebelah kanan",
                    image: "STEP11"),
                DirectionModel(
                    step: "12. Sampai di titik tujuan! Selamat menikmati",
                    image: "Mama Djempol"),
            ]),
        TenantModel(
            image: "Mustafa Minang", name: "Mustafa Minang", maxPrice: 33,
            minPrice: 15,
            description:
                "Mustafa Minang adalah rumah makan yang menjual berbagai masakan dari Sumatera Barat",
            labels: ["Chicken", "Rice", "Padang"],
            menus: [
                MenuModel(
                    name: "Nasi + Telor", image: "Nasi Telur",
                    description:
                        "Nasi putih dengan lauk telur dadar dan tambahan sayuran",
                    price: 15),

                MenuModel(
                    name: "Nasi + Ayam Bakar", image: "Nasi Ayam Bakar",
                    description:
                        "Nasi putih dengan lauk ayam bakar dan tambahan sayuran",
                    price: 22),
                MenuModel(
                    name: "Nasi + Rendang", image: "Nasi Rendang",
                    description:
                        "Nasi putih dengan lauk rendang dan tambahan sayuran",
                    price: 25),
                MenuModel(
                    name: "Nasi + Gulai Tunjang", image: "Nasi Gulai Tunjang",
                    description:
                        "Nasi putih dengan lauk gulai tunjang dan tambahan sayuran",
                    price: 33),
            ],
            reviews: [
                ReviewModel(
                    picture: "Zikar Luis", user: "Zikar Luis",
                    textreview: "Mantapnyoo", rating: 5)
            ],
            directions: [
                DirectionModel(
                    step: "1. Keluar dari pintu depan Apple Academy.",
                    image: "STEP1"),
                DirectionModel(
                    step:
                        "2. Dari pintu keluar Apple Developer Academy belok kiri untuk menuju ke arah basement.",
                    image: "STEP2"),
                DirectionModel(
                    step:
                        "3. Lurus dan belok kanan untuk turun ke arah basement.",
                    image: "STEP3"),
                DirectionModel(
                    step:
                        "4. Lurus terus dan turun menggunakan tangga atau lift",
                    image: "STEP4"),
                DirectionModel(
                    step:
                        "5. Turun dari tangga belok kanan untuk keluar Basement",
                    image: "STEP5"),
                DirectionModel(
                    step: "6. Keluar Basement belok kiri ke arah kantin.",
                    image: "STEP6"),
                DirectionModel(
                    step: "7. Lurus terus sampai ujung.", image: "STEP7"),
                DirectionModel(
                    step:
                        "8. Sampai di ujung kamu akan menemukan tempat Green Eatery lalu belok kiri",
                    image: "STEP8"),
                DirectionModel(
                    step: "9. Masuk ke dalam kantin Green Eatery",
                    image: "STEP9"),
                DirectionModel(
                    step: "10. Lurus sampai ujung lalu belok kanan",
                    image: "STEP10"),
                DirectionModel(
                    step:
                        "11. Kantin Mama Djempol ada di paling ujung sebelah kanan",
                    image: "STEP11"),
                DirectionModel(
                    step: "12. Sampai di titik tujuan! Selamat menikmati",
                    image: "Mama Djempol"),
            ]),
        TenantModel(
            image: "Bakso Joss", name: "Bakso Joss", maxPrice: 25, minPrice: 15,
            description:
                "Bakso Joss merupakan rumah makan yang menjual berbagai olahan bakso",
            labels: ["Bakso"],
            menus: [
                MenuModel(
                    name: "Bakso Polos", image: "Bakso Polos",
                    description: "Bakso polos dengan kuah kaldu yang gurih",
                    price: 22),
                MenuModel(
                    name: "Bakso Malang", image: "Bakso Malang",
                    description:
                        "Bakso malang dengan kuah kaldu yang gurih dan pangsit renyah",
                    price: 15),
                MenuModel(
                    name: "Bakso Telur", image: "Bakso Telur",
                    description:
                        "Bakso isi telur dengan kuah kaldu yang gurih dan pangsit renyah",
                    price: 22),
                MenuModel(
                    name: "Bakso Besar", image: "Bakso Besar",
                    description:
                        "Bakso dengan ukuran jumbo dengan kuah kaldu yang gurih",
                    price: 25),

            ],
            reviews: [
                ReviewModel(
                    picture: "Zikar Luis", user: "Zikar Luis",
                    textreview: "Terlalu berkuah menurut kami", rating: 3)
            ],
            directions: [
                DirectionModel(
                    step: "1. Keluar dari pintu depan Apple Academy.",
                    image: "STEP1"),
                DirectionModel(
                    step:
                        "2. Dari pintu keluar Apple Developer Academy belok kiri untuk menuju ke arah basement.",
                    image: "STEP2"),
                DirectionModel(
                    step:
                        "3. Lurus dan belok kanan untuk turun ke arah basement.",
                    image: "STEP3"),
                DirectionModel(
                    step:
                        "4. Lurus terus dan turun menggunakan tangga atau lift",
                    image: "STEP4"),
                DirectionModel(
                    step:
                        "5. Turun dari tangga belok kanan untuk keluar Basement",
                    image: "STEP5"),
                DirectionModel(
                    step: "6. Keluar Basement belok kiri ke arah kantin.",
                    image: "STEP6"),
                DirectionModel(
                    step: "7. Lurus terus sampai ujung.", image: "STEP7"),
                DirectionModel(
                    step:
                        "8. Sampai di ujung kamu akan menemukan tempat Green Eatery lalu belok kiri",
                    image: "STEP8"),
                DirectionModel(
                    step: "9. Masuk ke dalam kantin Green Eatery",
                    image: "STEP9"),
                DirectionModel(
                    step: "10. Lurus sampai ujung lalu belok kanan",
                    image: "STEP10"),
                DirectionModel(
                    step:
                        "11. Kantin Mama Djempol ada di paling ujung sebelah kanan",
                    image: "STEP11"),
                DirectionModel(
                    step: "12. Sampai di titik tujuan! Selamat menikmati",
                    image: "Mama Djempol"),
            ]
        ),

        TenantModel(
            image: "Warung Gado Gado", name: "Warung Gado Gado", maxPrice: 25, minPrice: 17,
            description:
                "Menjual gado-gado dan ketoprak",
            labels: ["Vegetables", "Rice"],
            menus: [
                MenuModel(name: "Gado-gado", image: "Gado Gado", description: "Gado gado standard tanpa lontong", price: 17),
                MenuModel(name: "Gado-gado Telur", image: "Gado Gado Telur", description: "Gado gado dengan telur tanpa lontong", price: 20),
                MenuModel(name: "Gado-gado Lontong", image: "Gado Gado Lontong", description: "Gado gado standard dengan lontong", price: 22),
            ],
            reviews: [
                ReviewModel(
                    picture: "Zikar Luis", user: "Zikar Luis",
                    textreview: "Nikmat sekali", rating: 5),
                ReviewModel(picture: "Althea", user: "Althea", textreview: "Aku ga pernah kebagian, tolong jam bukanya lebih konsisten!", rating: 2)
            ],
            directions: [
                DirectionModel(
                    step: "1. Keluar dari pintu depan Apple Academy.",
                    image: "STEP1"),
                DirectionModel(
                    step:
                        "2. Dari pintu keluar Apple Developer Academy belok kiri untuk menuju ke arah basement.",
                    image: "STEP2"),
                DirectionModel(
                    step:
                        "3. Lurus dan belok kanan untuk turun ke arah basement.",
                    image: "STEP3"),
                DirectionModel(
                    step:
                        "4. Lurus terus dan turun menggunakan tangga atau lift",
                    image: "STEP4"),
                DirectionModel(
                    step:
                        "5. Turun dari tangga belok kanan untuk keluar Basement",
                    image: "STEP5"),
                DirectionModel(
                    step: "6. Keluar Basement belok kiri ke arah kantin.",
                    image: "STEP6"),
                DirectionModel(
                    step: "7. Lurus terus sampai ujung.", image: "STEP7"),
                DirectionModel(
                    step:
                        "8. Sampai di ujung kamu akan menemukan tempat Green Eatery lalu belok kiri",
                    image: "STEP8"),
                DirectionModel(
                    step: "9. Masuk ke dalam kantin Green Eatery",
                    image: "STEP9"),
                DirectionModel(
                    step: "10. Lurus sampai ujung lalu belok kanan",
                    image: "STEP10"),
                DirectionModel(
                    step:
                        "11. Kantin Mama Djempol ada di paling ujung sebelah kanan",
                    image: "STEP11"),
                DirectionModel(
                    step: "12. Sampai di titik tujuan! Selamat menikmati",
                    image: "Mama Djempol"),
            ]
        ),
    ]
}
