//
//  TimeView.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import SwiftUI

struct TimeView: View {
    
    let timeStr: String
    
    var body: some View {
        ZStack {
            VStack() {
                Text(timeStr)
                    .font(.system(size: 25))
                    .fontWeight(.medium)
                    .foregroundColor(Color.darkGrey)
            }
        }
        .frame(width: 200, height: 90)
        .background(.clear)
        .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(.lightColour, lineWidth: 5))
    }
}

#Preview {
    TimeView(timeStr: "05:30 PM")
}
