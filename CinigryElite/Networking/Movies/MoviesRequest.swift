//
//  MoviesRequest.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import Foundation

struct MoviesRequest: RequestHandler {
    
    func GetMoviesList(from requestParam: RequestData) -> URLRequest? {
        let urlString =  APIPath.escapeRoomMovies
        if var url = URL(string: urlString) {
            if requestParam.param.count > 0 && requestParam.requestParamType == .query {
                url = setQueryParams(parameters: requestParam.param, url: url)
            }
            var urlRequest = URLRequest(url: url)
            setDefaultHeaders(request: &urlRequest)
            urlRequest.httpMethod = HTTPMethod.post.rawValue
            return urlRequest
        }
        return nil
    }
    
    func GetMoviesDetail(from requestParam: RequestData) -> URLRequest? {
        let urlString =  APIPath.getMovieInfo
        if var url = URL(string: urlString) {
            if requestParam.param.count > 0 && requestParam.requestParamType == .query {
                url = setQueryParams(parameters: requestParam.param, url: url)
            }
            var urlRequest = URLRequest(url: url)
            setDefaultHeaders(request: &urlRequest)
            urlRequest.httpMethod = HTTPMethod.post.rawValue
            return urlRequest
        }
        return nil
    }
    
}
