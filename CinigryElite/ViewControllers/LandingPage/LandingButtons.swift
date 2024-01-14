//
//  LandingButtons.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingButtons: View {
    
    @Binding var selectedButton: landingButtons
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            Button {
//                isShowingDetail = true
//                selectedButton = .signIn
            } label: {
                PrimaryButton(title: "Sign In Now!", width: GlobalModel.threeQuaterWidth, heigt: 60)
            }
            Text("Don't have an account?")
                .foregroundColor(.lightGry)
                .fontWeight(.medium)
                .padding(.bottom, -30)
            Button {
//                isShowingDetail = true
//                selectedButton = .signUp
            } label: {
                PrimaryButton(title: "Sign Up", width: GlobalModel.threeQuaterWidth, heigt: 60)
            }
            Button {
                isShowingDetail = true
                selectedButton = .ContinueAsGuest
            } label: {
                PrimaryButton(title: "Continue As Guest", width: GlobalModel.threeQuaterWidth, heigt: 60)
            }
        }
    }
}

#Preview {
    LandingButtons(selectedButton: .constant(.signIn), isShowingDetail: .constant(false))
}
