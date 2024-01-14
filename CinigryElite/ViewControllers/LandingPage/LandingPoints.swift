//
//  LandingPoints.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingPoints: View {
    var body: some View {
        VStack(spacing: 10) {
            ForEach(LandingModel.landingPoints, id: \.self) {
                pointVal in
                LandingPoint(title: pointVal)
            }
        }
    }
}

#Preview {
    LandingPoints()
}
