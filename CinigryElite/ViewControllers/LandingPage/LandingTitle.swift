//
//  LandingTitle.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingTitle: View {
    var body: some View {
        VStack (alignment: .leading, spacing: -25) {
            Text("Join The Magic")
                .padding()
                .font(.title)
                .fontWeight(.medium)
            Text("Be Cinergy ELITE!")
                .padding()
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    LandingTitle()
}
