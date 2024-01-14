//
//  LandingPoint.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct LandingPoint: View {
    
    var title: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(.lightColor)
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20, alignment: .leading)
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.darkGrey)
            Spacer()
        }
    }
}

#Preview {
    LandingPoint(title: LandingModel.point2)
}
