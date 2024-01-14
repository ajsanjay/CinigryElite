//
//  MoviesGrid.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct MoviesGrid: View {
    
    @StateObject var viewModel = MoviesViewModel()
    var moviesList: [MovieContent]
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Escape Rooms")
                        .padding()
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach((0...moviesList.count - 1), id: \.self) { i in
                            MovieGridCell(movie: moviesList[i])
                                .onTapGesture {
                                    viewModel.selectedObject = moviesList[i]
                                }
                        }
                    }
                    .padding()
                }
                .padding(.top, -20)
            }
            
            if viewModel.isShowingDetail {
                withAnimation {
                    BottomSheet(isShowing: $viewModel.isShowingDetail, content: AnyView(MovieInfo(isPresented: $viewModel.isShowingDetail, data: viewModel.selectedObject!)))
                }
            }
        }
    }
}

#Preview {
    MoviesGrid(moviesList: MockMovieList.movies)
}
