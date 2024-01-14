//
//  APIPath.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import Foundation

//#if DEBUG
let environment = APIEnvironment.development
//#else
//let environment = APIEnvironment.production
//#endif

struct APIPath {
    static var guestToken: String { return "\(environment.baseURL())/guestToken" }
    static var login: String { return "\(environment.baseURL())/login" }
    static var escapeRoomMovies: String { return "\(environment.baseURL())/escapeRoomMovies" }
    static var getMovieInfo: String { return "\(environment.baseURL())/getMovieInfo" }
}

enum ServerStatus: String {
    case Success = "Success"
    case fail = "fail"
}
