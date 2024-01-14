//
//  MoviesViewModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

final class MoviesViewModel: ObservableObject {
    
    @Published var isLoading = true
    @Published var isShowingDetail = false
    
    var selectedObject: MovieContent? {
        didSet { isShowingDetail = true }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
}
