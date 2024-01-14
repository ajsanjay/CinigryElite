//
//  GustLoginRequest.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import Foundation

struct GustLoginRequest: RequestHandler {
    
    func GetGuestInfo(from requestParam: RequestData) -> URLRequest? {
        let urlString =  APIPath.guestToken
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
    
    func LoginRequest(from requestParam: RequestData) -> URLRequest? {
        let urlString =  APIPath.login
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
