//
//  APIEnvironment.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import Foundation

enum APIEnvironment {
    
    case development
    case production
    
    func baseURL () -> String {
        return "https://\(domain())"
    }

    func domain() -> String {
        return self == .development ? "cinergyapp.thetunagroup.com/api" : "cinergyapp.thetunagroup.com/api"
    }
    
}
