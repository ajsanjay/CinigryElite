//
//  MoviesLanding.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct MoviesLanding: View {
    
    @StateObject var viewModel = LandingViewModel()
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack (spacing: -40) {
            if viewModel.isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
                Text("Loading...")
                Text(" ")
                Button {
                    self.isShowingDetail = false
                } label: {
                    Text("Back")
                }
            } else {
                MoviesHeading(isShowingDetail: $isShowingDetail)
                MoviesGrid(moviesList: viewModel.movies)
            }
        }
        .padding(.top, -40)
        .onAppear {
            viewModel.getGuestInfo()
            isShowingDetail = viewModel.isShowingDetail
        }
    }
}

#Preview {
    MoviesLanding(isShowingDetail: .constant(false))
}
