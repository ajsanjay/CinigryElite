//
//  GuestUserModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import Foundation

struct GuestUserModel: Codable {
    let response: String?
    let token: String?
    let printer_name: String?
    let food_menu: Int?
    let attractions_menu: Int?
    let id: Int?
    let location: String?
  }
