//
//  CinigryRemoteImage.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromUrl urlstring: String) {
        MoviesApi().downloadImage(fromUrl: urlstring, completed: { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        })
    }
    
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image(systemName: "movieclapper.fill").resizable()
    }
}

struct CinigryRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear() {
                imageLoader.load(fromUrl: urlString)
            }
    }
}

#Preview {
    CinigryRemoteImage(urlString: MockMovieList.movie1.image_url!)
}
