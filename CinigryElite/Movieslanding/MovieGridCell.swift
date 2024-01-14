//
//  MovieGridCell.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct MovieGridCell: View {
    
    let movie: MovieContent
    
    var body: some View {
        VStack {
            CinigryRemoteImage(urlString: movie.image_url ?? "")
                .aspectRatio(contentMode: .fill)
                .frame(width: GlobalModel.halfWidth - 30, height: GlobalModel.halfScreenHeight - 40, alignment: .center)
                .cornerRadius(8.0)
            Text(movie.Title ?? "Movie")
                .frame(maxWidth: GlobalModel.halfWidth - 30, alignment: .leading)
                .font(.title3)
                .fontWeight(.medium)
            Spacer(minLength: 30)
        }
    }
}

#Preview {
    MovieGridCell(movie: MockMovieList.movie1)
}
