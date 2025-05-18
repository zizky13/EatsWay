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
    @Binding var isShowingFilterPage: Bool
    @Binding var selectedCuisines: Set<String>
    @Binding var priceSorting: PriceSortingOption
    @Binding var tenants: [TenantModel]
    @Binding var filteredTenants: [TenantModel]
    @Binding var user: UserModel
    var calledFromHome: Bool

    func toggleCuisine(_ cuisine: String) {
        if selectedCuisines.contains(cuisine) {
            selectedCuisines.remove(cuisine)
        } else {
            selectedCuisines.insert(cuisine)
        }
    }

    func isCuisineSelected(_ cuisine: String) -> Bool {
        return selectedCuisines.contains(cuisine)
    }

    func selectSort(lowToHigh: Bool) {
        priceSorting = lowToHigh ? .lowToHigh : .highToLow
    }

    func resetFilters() {
        selectedCuisines.removeAll()
        priceSorting = .none
    }
    
    func applyFilters() {
        filteredTenants = tenants.filter { tenant in
            let matchesCuisine = user.selectedLabels.isEmpty || !tenant.labels.isDisjoint(with: user.selectedLabels)
            return matchesCuisine
        }

        switch user.priceSorting {
        case .lowToHigh:
            filteredTenants.sort { $0.minPrice < $1.minPrice }
        case .highToLow:
            filteredTenants.sort { $0.minPrice > $1.minPrice }
        case .none:
            break
        }
    }


    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                VStack(alignment: .leading){
                    Text("Help us set your taste and budget!")
                        .font(.system(size: 26, weight: .bold))
                        .padding(.bottom, 30)

                    VStack(alignment: .leading) {
                        Text("Cuisine Categories")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.bottom, 20)

                        HStack {
                            ToggleButton(
                                buttonText: "Rice",
                                isSelected: selectedCuisines.contains("Rice"),
                                action: { toggleCuisine("Rice") }
                            ).padding(.trailing, 15)

                            ToggleButton(
                                buttonText: "Noodles",
                                isSelected: selectedCuisines.contains(
                                    "Noodles"),
                                action: { toggleCuisine("Noodles") }
                            ).padding(.trailing, 15)

                            ToggleButton(
                                buttonText: "Porridge",
                                isSelected: selectedCuisines.contains(
                                    "Porridge"),
                                action: { toggleCuisine("Porridge") }
                            ).padding(.trailing, 15)
                            
                            ToggleButton(
                                buttonText: "Snacks",
                                isSelected: selectedCuisines.contains(
                                    "Snacks"),
                                action: { toggleCuisine("Snacks") }
                            ).padding(.trailing, 15)
                        }

                        HStack {
                            ToggleButton(
                                buttonText: "Bakso",
                                isSelected: selectedCuisines.contains(
                                    "Bakso"),
                                action: { toggleCuisine("Bakso") }
                            ).padding(.trailing, 15)
                            
                            ToggleButton(
                                buttonText: "Soto",
                                isSelected: selectedCuisines.contains(
                                    "Soto"),
                                action: { toggleCuisine("Soto") }
                            ).padding(.trailing, 15)


                            ToggleButton(
                                buttonText: "Beverages",
                                isSelected: selectedCuisines.contains(
                                    "Beverages"),
                                action: { toggleCuisine("Beverages") }
                            ).padding(.trailing, 15)
                        }
                        
                        HStack{
                            ToggleButton(
                                buttonText: "Chicken",
                                isSelected: selectedCuisines.contains(
                                    "Chicken"),
                                action: { toggleCuisine("Chicken") }
                            ).padding(.trailing, 15)
                            
                            ToggleButton(
                                buttonText: "Padang",
                                isSelected: selectedCuisines.contains(
                                    "Padang"),
                                action: { toggleCuisine("Padang") }
                            ).padding(.trailing, 15)
                            
                            ToggleButton(
                                buttonText: "Vegetables",
                                isSelected: selectedCuisines.contains(
                                    "Vegetables"),
                                action: { toggleCuisine("Vegetables") }
                            ).padding(.trailing, 15)
                        }
                        
                    }
                    .padding(.bottom, 54)

                    VStack(alignment: .leading) {
                        Text("Price")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.bottom, 20)

                        HStack {
                            ToggleButton(
                                buttonText: "Low to High",
                                isSelected: priceSorting == .lowToHigh,
                                action: {
                                    priceSorting =
                                        priceSorting == .lowToHigh ? .none : .lowToHigh
                                }
                            )
                            .padding(.trailing, 15)

                            ToggleButton(
                                buttonText: "High to Low",
                                isSelected: priceSorting == .highToLow,
                                action: {
                                    priceSorting =
                                        priceSorting == .highToLow ? .none : .highToLow
                                }
                            )
                            .padding(.trailing, 15)
                        }

                    }

                    Spacer()
                    if calledFromHome {
                        HStack {
                            Spacer()
                            Button {
                                // You can pass this back to HomeViewModel or dismiss the view
                                applyFilters()
                                isShowingFilterPage = false
                                resetFilters()
                            } label: {
                                Text("Save")
                                    .font(.headline)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 15)
                                    .foregroundStyle(.white)
                                    .background(Color.ourBlue, in: .capsule)
                            }
                            Spacer()
                        }
                        .background(Color.ourBlue)
                        .cornerRadius(10)
                    }
                }
                Spacer()
            }
        }
        .padding(20)
        .padding(.top, 30)
    }

}

#Preview {
    @Previewable @State var isShowingFilterPage: Bool = false
    @Previewable @State var selectedCuisines: Set<String> = []
    @Previewable @State var priceSorting: PriceSortingOption = .none
    @Previewable @State var tenants: [TenantModel] = []
    @Previewable @State var filteredTenants: [TenantModel] = []
    @Previewable @State var user: UserModel = .init(name: "Joko", selectedLabels: [], priceSorting: .none)
    
    FilterView(isShowingFilterPage: $isShowingFilterPage, selectedCuisines: $selectedCuisines, priceSorting: $priceSorting, tenants: $tenants, filteredTenants: $filteredTenants, user: $user, calledFromHome: true)
}
