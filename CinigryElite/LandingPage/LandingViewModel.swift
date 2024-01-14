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
    
}
