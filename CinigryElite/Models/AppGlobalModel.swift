//
//  AppGlobalModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import SwiftUI

struct GlobalModel {
    static let screenWidth = UIScreen.main.bounds.width
    static let halfWidth = UIScreen.main.bounds.width * 0.5
    static let threeQuaterWidth = UIScreen.main.bounds.width * 0.75
    static let screenHeight = UIScreen.main.bounds.height
    static let halfScreenHeight = UIScreen.main.bounds.height * 0.5
    static let threeQuaterHeight = UIScreen.main.bounds.height * 0.75
    static let uuid = UIDevice.current.identifierForVendor!.uuidString + "CI -"
}

struct Constants {
    // API Headers
    struct APIHeaders {
        static var kContentType = "Content-Type"
        static var contentTypeValue = "application/json"
    }
}

enum UserDefaultKeys: String {
    case authToken
}

struct StatusFail: Codable {
    let status: String?
    let error: FailError?
}

struct FailError: Codable {
    let message: FailErrorMessage?
}

struct FailErrorMessage: Codable {
    let email: String?
    let username: String?
    let token: String?
    let message: String?
}

func convertToDictionary(from text: String) throws -> [String: String] {
    if (text as NSString).contains("invalid_token") {
//        postNotification("tokenExpire", [:])
    }
    guard let data = text.data(using: .utf8) else { return [:] }
    let anyResult: Any = try JSONSerialization.jsonObject(with: data, options: [])
    return anyResult as? [String: String] ?? [:]
}
