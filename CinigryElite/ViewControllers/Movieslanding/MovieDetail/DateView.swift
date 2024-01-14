//
//  DateView.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import SwiftUI

struct DateView: View {
    
    let week: String
    let date: String
    let isSelected: Bool
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text(week)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(.darkColor)
                Text(date)
                    .font(.title2)
            }
        }
        .frame(width: 100, height: 100)
        .background(isSelected ? .lightColour.opacity(0.3) : .clear)
        .cornerRadius(3.0)
    }
}

#Preview {
    DateView(week: "Wed", date: "Jan 09", isSelected: true)
}
