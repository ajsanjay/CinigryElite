//
//  LandingViewModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import Foundation

import SwiftUI


@MainActor final class LandingViewModel: NSObject, ObservableObject {
    
    @Published var selectedButton: landingButtons = .ContinueAsGuest
    @Published var isShowingDetail: Bool = false
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = true
    @Published var movies: [MovieContent] = []
    @Published var memberId = ""
    
    func getGuestInfo() {
        let qureyParam: [String: Any] = ["secret_key": GlobalModel.acessToken, "device_id": GlobalModel.uuid, "device_type": 2, "push_token": ""]
        GuestLoginAPI().GustInfo(param: qureyParam, completion: { [weak self] guestResponse, error in
            guard let weakSelf = self else { return }
            guard error == nil else {
                print("From main class Error",error?.message ?? "")
                weakSelf.alertItem = AlertContext.invalidError
                weakSelf.isShowingDetail = false
                weakSelf.isLoading = false
                return
            }
            guard let guestResp = guestResponse else { return }
            if guestResp.response == "success" {
                UserDefaults.standard.set(guestResp.token, forKey: UserDefaultKeys.authToken.rawValue)
                weakSelf.getLoginIngo()
            } else {
                DispatchQueue.main.async {
                    weakSelf.isShowingDetail = false
                    weakSelf.isLoading = false
                }
            }
        })
    }
    
    func getLoginIngo() {
        let qureyParam: [String: Any] = ["device_id": GlobalModel.uuid, "device_type": 2, "login_type": 2, "email": "", "password": ""]
        GuestLoginAPI().loginAPI(param: qureyParam, completion: {
            [weak self] logInResponse, error in
            guard let weakSelf = self else { return }
            guard error == nil else {
                print("From main class Error",error?.message ?? "")
                weakSelf.alertItem = AlertContext.invalidError
                weakSelf.isShowingDetail = false
                weakSelf.isLoading = false
                return
            }
            guard let loginResp = logInResponse else { return }
            DispatchQueue.main.async {
                if loginResp.response == "success" {
                    UserDefaults.standard.set("\(loginResp.user?.id ?? 0)", forKey: UserDefaultKeys.userId.rawValue)
                    weakSelf.getMoviesList()
                } else {
                    weakSelf.isShowingDetail = false
                    weakSelf.isLoading = false
                }
            }
        })
    }
    
    func getMoviesList() {
        let qureyParam: [String: Any] = ["member_id": "","device_id": GlobalModel.uuid, "device_type": 2, "location_id": 5]
        MoviesApi().MoviesAPI(param: qureyParam, completion: {
            [weak self] moviesResp, error in
            guard let weakSelf = self else { return }
            guard error == nil else {
                print("From main class Error",error?.message ?? "")
                weakSelf.alertItem = AlertContext.invalidError
                weakSelf.isShowingDetail = false
                weakSelf.isLoading = false
                return
            }
            guard let movieResp = moviesResp else { return }
            DispatchQueue.main.async {
                if movieResp.response == "success" {
                    weakSelf.movies = movieResp.escape_rooms_movies
                    weakSelf.isShowingDetail = true
                    weakSelf.isLoading = false
                } else {
                    weakSelf.isShowingDetail = false
                    weakSelf.isLoading = false
                }
            }
        })
    }
    
}
