import SwiftUI
import CoreLocation

// MARK: - Extensions
extension CLLocationCoordinate2D: Equatable {
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}

extension Double {
    var degreesToRadians: Float { Float(self * .pi / 180) }
    var radiansToDegrees: Double { self * 180 / .pi }
}

// MARK: - ContentView
struct NavigationARView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var distanceText: String = "Calculating..."
    @State private var directionAngle: Double = 0.0
    @Environment(\.presentationMode) var presentationMode
    // Target lokasi presisi
    let targetLocation = CLLocationCoordinate2D(
        latitude: -6.302166210030804,
        longitude: 106.652429053279
    )

    var body: some View {
        ZStack {
            // AR View
            ARViewContainer(
                distanceText: $distanceText,
                directionAngle: $directionAngle
            )
            .edgesIgnoringSafeArea(.all)

            VStack {
                // Top bar
                ARTopBarView(
                    locationTitle: "Pantry",
                    locationSubtitle: "Apple Developer Academy",
                    backAction: {
                        presentationMode.wrappedValue.dismiss()
                    }
                )

                Spacer()

                // Distance text (di bawah kompas)
                Text(distanceText)
                    .font(.title2)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.bottom, 100)
            }
        }
        .onChange(of: locationManager.userLocation) { newLocation in
            guard let userLoc = newLocation else { return }

            // DEBUG: Cetak lokasi user
//            print("User location: \(userLoc.latitude), \(userLoc.longitude)")

            // Hitung jarak dan arah
            let distance = getDistance(from: userLoc, to: targetLocation)
            distanceText = String(format: "%.1f m", distance)

            let angle = getBearing(from: userLoc, to: targetLocation)
            directionAngle = angle
        }
    }

    // MARK: - Utility Functions
    func getDistance(from: CLLocationCoordinate2D, to: CLLocationCoordinate2D) -> CLLocationDistance {
        let loc1 = CLLocation(latitude: from.latitude, longitude: from.longitude)
        let loc2 = CLLocation(latitude: to.latitude, longitude: to.longitude)
        return loc1.distance(from: loc2)
    }

    func getBearing(from: CLLocationCoordinate2D, to: CLLocationCoordinate2D) -> Double {
        let lat1 = from.latitude * .pi / 180
        let lon1 = from.longitude * .pi / 180
        let lat2 = to.latitude * .pi / 180
        let lon2 = to.longitude * .pi / 180

        let dLon = lon2 - lon1
        let y = sin(dLon) * cos(lat2)
        let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon)
        let radiansBearing = atan2(y, x)

        return radiansBearing * 180 / .pi
    }
}
