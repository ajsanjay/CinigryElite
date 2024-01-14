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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MovieDetailPage(isDetail: .constant(false))
}
