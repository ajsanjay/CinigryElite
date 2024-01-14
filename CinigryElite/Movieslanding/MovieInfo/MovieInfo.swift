//
//  MovieInfo.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import SwiftUI

struct MovieInfo: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        Button {
            isShowingDetail = false
        } label: {
            Text("Back")
        }
    }
    
}

#Preview {
    MovieInfo(isShowingDetail: .constant(false))
}
