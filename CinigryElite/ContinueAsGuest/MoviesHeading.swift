//
//  MoviesHeading.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct MoviesHeading: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        HStack {
            Button {
                isShowingDetail = false
            } label: {
                Label("Back", systemImage: "chevron.backward")
                       .labelStyle(.titleAndIcon)
                       .font(.title3)
                       .fontWeight(.bold)
            }
            Spacer()
            HStack {
                Image(uiImage: UIImage(named: "locationIcon")!)
                    .resizable()
                    .frame(width: 18, height: 20)
                    .foregroundColor(.darkColor)
                    .padding()
                Text("Tulsa, Ok")
                    .font(.title3)
                    .fontWeight(.medium)
            }
            .padding()
        }
        .padding()
        .accentColor(.black)
    }
}

#Preview {
    MoviesHeading(isShowingDetail: .constant(false))
}
