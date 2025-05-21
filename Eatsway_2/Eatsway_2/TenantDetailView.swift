import SwiftUI

struct TenantDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var scrollOffset: CGFloat = 0

    struct MenuItem: Identifiable {
        let id = UUID()
        let name: String
        let price: Int
        let image: String
    }

    let dummyMenuItems = [
        MenuItem(name: "Sapi Lada Hitam", price: 14000, image: "Sapi Lada Hitam"),
        MenuItem(name: "Ayam Rica-Rica", price: 11000, image: "Ayam Rica Rica"),
        MenuItem(name: "Ayam Kemangi", price: 11000, image: "Ayam Kemangi"),
        MenuItem(name: "Ayam Asam Manis", price: 11000, image: "Ayam Asam Manis")
    ]

    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.brokenWhite
                .ignoresSafeArea()
            
            ScrollView {
                GeometryReader { geo in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geo.frame(in: .global).minY)
                }
                .frame(height: 0)
                
                ZStack {
                    
                    Image("Mama Djempol")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 400)
                        .clipped()
                        .ignoresSafeArea(edges: .top)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.brokenWhite)
                        .clipShape(RoundedCornerShape(corners: [.topLeft, .topRight], radius: 30))
                        .offset(y: 370)
                }
                
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Restaurant Info
                        VStack (alignment: .leading, spacing: 8){
                            HStack {
                                Text("Mama Djempol")
                                    .font(Font.custom("TimesNewRomanPSMT", size: 30))
                                    .foregroundColor(.greenApp)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                ZStack {
                                    Button {
                                        // Maps action
                                    } label: {
                                        HStack(spacing: 4) {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.greenApp)
                                            Text("4.9")
                                                .foregroundColor(.black)
                                                .fontWeight(.semibold)
                                        }
                                        .frame(width: 52, height: 14)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 12)
                                        .background(Color.white)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.darkGray, lineWidth: 1)
                                        )
                                    }
                                    
                                    
                                    
                                }
                            }
                            
                            Text("Rice, Chicken, Porridge")
                                .foregroundColor(.darkGray)
                            
                        }
                        
                        
                        VStack (alignment: .leading, spacing: 30){
                            Text("Mama Djempol adalah warung makan yang menyediakan berbagai jenis masakan rumahan dengan harga yang terjangkau.")
                                .foregroundColor(.black)
                            
                            VStack (alignment: .leading, spacing: 40){
                                HStack{
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("Price Range")
                                            .font(Font.custom("TimesNewRomanPSMT", size: 28))
                                            .foregroundColor(.greenApp)
                                            .fontWeight(.bold)
                                        
                                        Text("Rp 20.000 - Rp 30.000")
                                    }
                                    
                                    .frame(width: 200, alignment:.leading)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Location")
                                            .font(Font.custom("TimesNewRomanPSMT", size: 28))
                                            .foregroundColor(.greenApp)
                                            .fontWeight(.bold)
                                        
                                        Text("Basement GOP 9")
                                    }
                                    
                                }
                                
                                Text("Our Menu")
                                    .font(Font.custom("TimesNewRomanPSMT", size: 28))
                                    .foregroundColor(.greenApp)
                                    .fontWeight(.bold)
                            }
                        }
                        
                        
                        
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ], spacing: 20) {
                            ForEach(dummyMenuItems) { item in
                                VStack(alignment: .leading, spacing: 4) {
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 175, height: 145)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.darkGray, lineWidth: 1)
                                        )
                                    
                                    VStack (alignment:.leading, spacing: 5) {
                                        Text(item.name)
                                            .font(.subheadline)
                                            .lineLimit(1)
                                        
                                        Text("Rp \(item.price)")
                                            .font(Font.custom("TimesNewRomanPSMT", size: 20))
                                            .foregroundColor(.greenApp)
                                            .fontWeight(.bold)
                                    }
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 8)
                                }
                                
                                .padding()
                                .frame(width: 175, height: 210)
                                .background(Color(.white))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.darkGray, lineWidth: 1)
                                )
                                
                                
                                
                                
                                
                            }
                        }
                        
//                        Button {
//                            // Maps action
//                        } label: {
//                            Text("Maps")
//                                .frame(maxWidth: .infinity)
//                                .padding()
//                                .background(Color.darkGreen)
//                                .foregroundColor(.white)
//                                .cornerRadius(8)
//                        }
                    }
                    .padding(.horizontal)
                }
            }
            .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                scrollOffset = value
            }
            .ignoresSafeArea(edges: .top)
            
            // Back Button
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.greenApp)
                    .padding(10)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.darkGray, lineWidth: 1)
                    )
            }
            .padding(.top, 10)
            .padding(.leading, 25)
            .opacity(Double(max(0, 1 - scrollOffset / 100))) // Fade out as you scroll
        }
        
        
        .navigationBarHidden(true)
        
            
            Button {
                // Maps action
            } label: {
                Text("Maps")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.greenApp)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 0)
            .ignoresSafeArea()

    }
}

// PreferenceKey to track scroll offset
struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

extension Color {
    static let darkGreen = Color(red: 53/255, green: 94/255, blue: 59/255)
}


struct RoundedCornerShape: Shape {
    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}



#Preview {
    TenantDetailView()
}
