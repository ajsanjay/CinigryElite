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
        NavigationStack {
            HStack () {
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
            .sheet(isPresented: $viewModel.isShowingDetail, content: {
//                frameWorkDetailView(viewModel: FrameWorkDetailVM(frameWork: viewModel.selectedObject ?? MockData.sampleFramework, isShowingDetail: $viewModel.isShowingDetail))
            })
        }
    }
}

#Preview {
    MoviesGrid(moviesList: MockMovieList.movies)
}
