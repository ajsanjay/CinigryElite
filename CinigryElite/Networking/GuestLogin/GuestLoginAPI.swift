//
//  GuestLoginAPI.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import Foundation

struct GuestLoginAPI {
    
    func GustInfo(param: [String: Any], completion: @escaping (GuestUserModel?, ServiceError?) -> ()) {
        let request = GustLoginRequest().GetGuestInfo(from: RequestData(requestParamType: .query, param: param))
        APILoader.shared.loadAPIRequest(isUserId: false, requestData: request) { (model: GuestUserModel?, error) in
            if let _ = error {
                completion(nil, error)
            } else {
                DispatchQueue.main.async {
                    completion(model, nil)
                }
            }
        }
    }
    
    func loginAPI(param: [String: Any], completion: @escaping (LoginModel?, ServiceError?) -> ()) {
        let request = GustLoginRequest().LoginRequest(from: RequestData(requestParamType: .query, param: param))
        APILoader.shared.loadAPIRequest(isUserId: false, requestData: request) { (model: LoginModel?, error) in
            if let _ = error {
                completion(nil, error)
            } else {
                completion(model, nil)
            }
        }
    }
    
}
