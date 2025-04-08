//
//  OnboardingView.swift
//  EatsWay
//
//  Created by Zikar Nurizky on 07/04/25.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var user: UserModel
    @State private var onboardingState = 0
    @AppStorage("hasUserLogin") var hasUserLogin: Bool = false
    @Binding var isShowingFilterPage: Bool
    @Binding var selectedCuisines: Set<String>
    @Binding var priceSorting: PriceSortingOption
    @Binding var tenants: [TenantModel]
    @Binding var filteredTenants: [TenantModel]

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
            let matchesCuisine =
                user.selectedLabels.isEmpty
                || !tenant.labels.isDisjoint(with: user.selectedLabels)
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

    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))

    var body: some View {
        ZStack {
            //content
            switch onboardingState {
            case 0:  //debatable
                logoView
                    .transition(transition)
            case 1:
                FilterView(
                    isShowingFilterPage: $isShowingFilterPage,
                    selectedCuisines: $user.selectedLabels,
                    priceSorting: $user.priceSorting, tenants: $tenants,
                    filteredTenants: $filteredTenants, user: $user,
                    calledFromHome: false
                ).transition(transition)
            case 2:
                welcomeView
                    .transition(transition)
            default:
                Text("This is default")
            }
            //button
            VStack {
                Spacer()
                bottomButton
            }
            .ignoresSafeArea(.keyboard)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}
extension OnboardingView {
    var bottomButton: some View {
        Text(
            onboardingState == 0
                ? "Get Started" : onboardingState == 2 ? "Let's Rock!!" : "Next"
        )
        .font(.headline)
        .foregroundColor(.black)
        .frame(height: 55)
        .frame(maxWidth: 343)
        .background(Color.darkBlue)
        .cornerRadius(15)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }

    func handleNextButtonPressed() {
        if onboardingState == 1 {
            applyFilters()
            print(selectedCuisines)
            isShowingFilterPage = false
            resetFilters()
            onboardingState += 1
        } else if onboardingState == 2 {
                        hasUserLogin = true
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }

    var nameView: some View {
        VStack {
            Spacer()
            HStack {
                Image("Cuate")
                    .resizable()
                    .frame(width: 203, height: 191.97)
            }
            .padding(.bottom, 30)
            Text("Hey There!! What Should We Call You?")
                .font(.system(size: 28, weight: .bold, design: .default))
                .padding(.bottom, 30)
                .multilineTextAlignment(.center)

            TextField("Your name", text: $user.name)
                .textFieldStyle(.roundedBorder)
                .frame(width: 300, height: 40)
                .padding(.horizontal)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding(.horizontal, 20)

            Spacer()
        }
        .padding(10)
    }

    var welcomeView: some View {
        VStack {
            Image("Pana")
            VStack {
                Text("Let's sate your hunger!!")
                    .font(.system(size: 28, weight: .bold, design: .default))
            }
            .padding(.top, 30)
        }
        .padding(10)
    }
    var logoView: some View {
        VStack {
            Image("Logo")
                .padding(.bottom, 10)
            Text("EatsWay")

                .font(.system(size: 35, weight: .bold, design: .default))
        }
        .padding(10)
    }

}

#Preview {
    @Previewable @State var isShowingFilterPage: Bool = false
    @Previewable @State var selectedCuisines: Set<String> = []
    @Previewable @State var priceSorting: PriceSortingOption = .none
    @Previewable @State var tenants: [TenantModel] = []
    @Previewable @State var filteredTenants: [TenantModel] = []
    @Previewable @State var user: UserModel = .init(
        name: "Joko", selectedLabels: [], priceSorting: .none)

    OnboardingView(
        user: $user, isShowingFilterPage: $isShowingFilterPage,
        selectedCuisines: $selectedCuisines, priceSorting: $priceSorting,
        tenants: $tenants, filteredTenants: $filteredTenants)
}
