//
//  MoviesLanding.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct MoviesLanding: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack (spacing: -40) {
            MoviesHeading(isShowingDetail: $isShowingDetail)
            MoviesGrid(moviesList: MockMovieList.movies)
        }
        .padding(.top, -40)
    }
}

#Preview {
    MoviesLanding(isShowingDetail: .constant(false))
}
