//
//  MoviesLanding.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct MoviesLanding: View {
    
    @StateObject var viewModel = LandingViewModel()
    @StateObject var moviesViewModel = MoviesViewModel()
    @Binding var isShowingDetail: Bool
    @State var isPopUp: Bool = false
    
    var body: some View {
        ZStack {
            VStack (spacing: -40) {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                    Text("Loading...")
                    Text(" ")
                    Button {
                        self.isShowingDetail = false
                    } label: {
                        Text("Stop")
                    }
                } else {
                    MoviesHeading(isShowingDetail: $isShowingDetail)
                    MoviesGrid(moviesList: viewModel.movies, erTicket: viewModel.erTicket)
                }
            }
        }
        .padding(.top, -40)
        .onAppear {
            self.viewModel.getGuestInfo()
        }
    }
}

#Preview {
    MoviesLanding(isShowingDetail: .constant(false))
}
