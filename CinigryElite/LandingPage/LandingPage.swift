//
//  LandingPage.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack (alignment: .center, spacing: 25) {
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
                    LandingButtons()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    LandingPage()
}
