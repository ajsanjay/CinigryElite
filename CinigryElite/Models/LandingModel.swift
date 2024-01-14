//
//  LandingModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import Foundation

struct LandingModel {
    static let point1 = "Enjoy a free popcorn on sign up."
    static let point2 = "Enjoy a $5.00 Elite reward after 300 points to spend however you want."
    static let point3 = "Enjoy a special birthday movie ticket offer."
    static let point4 = "Enjoy exclusive content, sneak peaks, and special offers!."
    static let landingPoints = [point1, point2, point3, point4]
}

enum landingButtons {
    case signIn, signUp, ContinueAsGuest
}


