//
//  LoginModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 14/01/24.
//

import Foundation

struct LoginModel: Codable {
    let response: String?
    let user: LoginUser?
    let food_menu: Int?
    let attractions_menu: Int?
    let splash_images: SplashImages?
  }

struct LoginUser: Codable {
    let id: Int?
    let role_id: Int?
    let location_id: Int?
    let address1: String?
    let address2: String?
    let city: String?
    let zip: String?
    let booking_token: String?
    let access_token: String?
    let name: String?
    let first_name: String?
    let last_name: String?
    let email: String?
    let phone_code: String?
    let phone: String?
    let image: String?
    let gender: String?
    let birthday: String?
    let cinema_id: Int?
    let member_id: Int?
    let username: String?
    let encrypted_password: String?
    let user_role: Int?
    let gmail_login: String?
    let fb_login: String?
    let opt_out1: Int?
    let opt_out2: Int?
    let ip_access: String?
    let is_active: Int?
    let created_at: String?
    let updated_at: String?
    let deleted_at: String?
    let location_name: String?
  }

struct SplashImages: Codable {
    let splash_image_top: String?
    let splash_image_bottom: String?
  }
