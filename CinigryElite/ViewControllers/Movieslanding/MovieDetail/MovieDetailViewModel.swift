//
//  MovieDetailViewModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import SwiftUI

@MainActor final class MovieDetailViewModel: NSObject, ObservableObject {
    
    @Published var isDetailView = false
    @Published var isLoading = true
    @Published var alertItem: AlertItem?
    @Published var movieData: MovieDetail?
    @Published var getTimeList: [String] = []
    
    func getMovieDetail(movieId: String) {
        let qureyParam: [String: Any] = ["device_id": GlobalModel.uuid, "device_type": 2, "location_id": 5, "movie_id": movieId]
        MoviesApi().MovieDetailAPI(param: qureyParam, completion: {
            [weak self] moviesResp, error in
            guard let weakSelf = self else { return }
            guard error == nil else {
                print("From main class Error",error?.message ?? "")
                weakSelf.alertItem = AlertContext.invalidError
                weakSelf.isLoading = false
                return
            }
            guard let movieResp = moviesResp else { return }
            DispatchQueue.main.async {
                if movieResp.response == "success" {
                    weakSelf.isLoading = false
                    weakSelf.movieData = movieResp
                    weakSelf.getTimeList = movieResp.movie_info?.date_list ?? []
                } else {
                    weakSelf.isLoading = false
                }
            }
        })
    }
    
    func getShowTimes(dateVal: String) -> [MovieSessions] {
        let showTimes = movieData?.movie_info?.show_times
        let foundTime = showTimes?.filter { $0.date == dateVal }
        return foundTime![0].sessions!
    }
    
}
