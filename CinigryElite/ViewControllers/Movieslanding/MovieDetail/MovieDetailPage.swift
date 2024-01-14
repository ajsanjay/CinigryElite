//
//  MovieDetailPage.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import SwiftUI

struct MovieDetailPage: View {
    
    @StateObject var viewModel = MovieDetailViewModel()
    @Binding var isDetail: Bool
    @State var selectedDay: Int = 0
    
    var movieId: String
    
    var body: some View {
        ZStack {
            VStack {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                    Text("Loading...")
                    Text(" ")
                    Button {
                        self.isDetail = false
                    } label: {
                        Text("Stop")
                    }
                } else {
                    ScrollView {
                        VStack {
                            MoviesHeading(isShowingDetail: $isDetail)
                            HStack {
                                CinigryRemoteImage(urlString: viewModel.movieData?.movie_info?.image_url ?? "")
                                    .frame(width: GlobalModel.quaterWidth, height: GlobalModel.quaterHeight + 20, alignment: .top)
                                    .padding(.leading, 30)
                                    .padding(.top, -40)
                                    .padding(.trailing, 30)
                                VStack {
                                    Text(viewModel.movieData?.movie_info?.Title ?? "N/A")
                                        .font(.headline)
                                        .fontWeight(.heavy)
                                        .padding(.top, -40)
                                    Text("")
                                    Text("\(viewModel.movieData?.movie_info?.Rating ?? "") • \(viewModel.movieData?.movie_info?.RunTime ?? "")")
                                        .padding(.leading, -60)
                                    Spacer()
                                }
                                Spacer()
                            }
                            .frame(maxHeight: GlobalModel.quaterHeight + 60)
                            .padding()
                            HStack {
                                Text("Choose Date")
                                    .padding()
                                    .padding(.top, -10)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            DateContent(dates: viewModel.movieData?.movie_info?.date_list ?? [], selectedDay: $selectedDay)
                                .frame(height: 150)
                                .padding(.top, -10)
                            HStack {
                                Text("Choose Time")
                                    .padding()
                                    .padding(.top, -10)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            TimeContent(showTimes: viewModel.getShowTimes(dateVal: viewModel.getTimeList[selectedDay]))
                        }
                    }
                }
            }
            .padding(.top, -40)
        }
        .onAppear {
            viewModel.getMovieDetail(movieId: movieId)
        }
    }
}

#Preview {
    MovieDetailPage(isDetail: .constant(false), selectedDay: 0, movieId: "HO00001618")
}
