//
//  LandingButtons.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingButtons: View {
    var body: some View {
        VStack(spacing: 30) {
            Button {
                print("Selected Sign In")
            } label: {
                PrimaryButton(title: "Sign In Now!", width: GlobalModel.quatrScreen, heigt: 60)
            }
            Text("Don't have an account?")
                .foregroundColor(.lightGry)
                .fontWeight(.medium)
                .padding(.bottom, -30)
            Button {
                print("Selected Sign Up")
            } label: {
                PrimaryButton(title: "Sign Up", width: GlobalModel.quatrScreen, heigt: 60)
            }
            Button {
                print("Selected Sign Up")
            } label: {
                PrimaryButton(title: "Continue As Guest", width: GlobalModel.quatrScreen, heigt: 60)
            }
        }
    }
}

#Preview {
    LandingButtons()
}
