//
//  LandingPage.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingPage: View {
    
    @StateObject var viewModel = LandingViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack (alignment: .leading, spacing: 25) {
                        HStack {
                            Spacer()
                            Image(uiImage: UIImage(named: "CinigryIcon")!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 130, alignment: .center)
                                .cornerRadius(0)
                                .padding()
                            Spacer()
                        }
                        LandingTitle()
                        LandingPoints()
                            .padding()
                    }
                    Spacer()
                    LandingButtons(selectedButton: $viewModel.selectedButton, isShowingDetail: $viewModel.isShowingDetail)
                        .padding(.top, 40)
                }
            }
            .fullScreenCover(isPresented: ($viewModel.isShowingDetail), content: {
                switch viewModel.selectedButton {
                case .signIn:
                    SignInPage()
                case .signUp:
                    SignUpPage()
                case .ContinueAsGuest:
                    MoviesLanding(isShowingDetail: $viewModel.isShowingDetail)
                }
            })
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    LandingPage()
}
