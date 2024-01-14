//
//  MoviesApi.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import SwiftUI

struct MoviesApi {
    
    private let cache = NSCache<NSString, UIImage>()
    
    func downloadImage(fromUrl: String, completed: @escaping (UIImage?) -> Void) {
        
        let cacheKey = NSString(string: fromUrl)
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        guard let url = URL(string: fromUrl) else {
            completed(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        task.resume()
        
    }
    
}
