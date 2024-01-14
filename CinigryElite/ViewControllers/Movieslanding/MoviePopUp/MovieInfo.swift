//
//  MovieInfo.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import SwiftUI

struct MovieInfo: View {
    
    @StateObject var viewModel = MovieInfoViewModel()
    @Binding var isPresented: Bool
    @State var isMovieDetail: Bool = false
    let data: MovieContent
    var erTicket: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    isPresented = false
                }, label: {
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 32, height: 32)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(16)
                        .foregroundColor(.black)
                })
            }
            HStack {
                VStack {
                    HStack {
                        CinigryRemoteImage(urlString: data.image_url ?? "")
                            .aspectRatio(contentMode: .fill)
                            .frame(width: GlobalModel.halfWidth - 40, height: GlobalModel.halfScreenHeight - 55, alignment: .center)
                            .cornerRadius(8.0)
                        Spacer()
                        VStack {
                            Text(data.Title ?? "")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.headline)
                                .fontWeight(.heavy)
                            Text("")
                            HStack(alignment: .top) {
                                Image(systemName: "calendar")
                                    .foregroundColor(.lightColor)
                                    .frame(alignment: .leading)
                                Text("\(data.RunTime ?? "") Mins")
                                    .fontWeight(.medium)
                                    .foregroundColor(.primaryGrey)
                                    .frame(alignment: .leading)
                                Spacer()
                                HStack(alignment: .top) {
                                    Image(systemName: "person.fill")
                                        .foregroundColor(.lightColor)
                                        .frame(alignment: .leading)
                                    Text(erTicket)
                                        .fontWeight(.medium)
                                        .foregroundColor(.primaryGrey)
                                        .frame(alignment: .leading)
                                }
                            }
                            .padding(.leading, -2)
                            Text("")
                            Text(data.Synopsis ?? "")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundColor(.primaryGrey)
                        }
                        .padding(.top, -35)
                    }
                    HStack {
                        Button {
                            self.isMovieDetail = true
                            print("Booking button")
                        } label: {
                            PrimaryButton(title: "Book Now", width: GlobalModel.threeQuaterWidth, heigt: 60)
                        }
                        Spacer()
                        Button {
                            print("More")
                        } label: {
                            VStack {
                                Image(systemName: "info")
                                    .foregroundColor(.lightColor)
                                Text("More")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
                Spacer()
            }
        }
        .frame(maxHeight: GlobalModel.halfScreenHeight + 20)
        .padding()
        .fullScreenCover(isPresented: $isMovieDetail, content: {
            MovieDetailPage(isDetail: $isMovieDetail, movieId: data.ID!)
        })
    }
    
}

#Preview {
    MovieInfo(isPresented: .constant(false), data: MockMovieList.movie1, erTicket: "Up to 8 members")
}
