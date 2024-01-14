//
//  PrimaryButton.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct PrimaryButton: View {
    
    var title: String
    var width: CGFloat
    var heigt: CGFloat
    
    var body: some View {
        Text(title)
            .frame(width: width, height: heigt)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.darkColor, Color.lightColor]), startPoint: .topTrailing, endPoint: .bottomLeading)
                )
            .foregroundColor(.black)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    PrimaryButton(title: "Select Here", width: GlobalModel.threeQuaterWidth, heigt: 60)
}
