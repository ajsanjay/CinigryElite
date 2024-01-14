//
//  MovieDetail.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import Foundation

struct MovieDetail: Codable {
    let response: String?
    let movie_info: DetailMovieIno?
    let er_tickets: String?
//    "grouped_movies": [],
    let upcoming_movies: [UpcomingMovies]?
  }

struct DetailMovieIno: Codable {
    let ScheduledFilmId: String?
    let slug: String?
    let Title: String?
    let Rating: String?
    let RunTime: String?
    let Synopsis: String?
    let image_url: String?
    let image_url_poster: String?
    let TrailerUrl: String?
    let Genres: String?
    let show_times: [MovieShowTimes]?
    let date_list: [String]?
//    "cast_and_crew": [],
//    "sale_on": null,
//    "coming_soon_reminder": 0
  }

struct UpcomingMovies: Codable {
    let ScheduledFilmId: String?
    let slug: String?
    let Title: String?
    let Rating: String?
    let RunTime: String?
    let Synopsis: String?
    let image_url: String?
    let image_url_poster: String?
    let TrailerUrl: String?
    let Genres: String?
  }

struct MovieShowTimes: Codable {
    let date: String?
    let sessions: [MovieSessions]?
  }

struct MovieSessions: Codable {
    let ScheduledFilmId: String?
    let Attribute: String?
    let SessionId: String?
    let ShowtimeVista: String?
    let Showtime: String?
    let IsAllocatedSeating: Bool?
    let SeatsAvailable: Int?
    let ScreenNumber: Int?
    let SoldoutStatus: Int?
    let AllowTicketSales: Bool?
  }

struct MockDates {
    static let mockDates = [
        "2024-01-14",
        "2024-01-15",
        "2024-01-16",
        "2024-01-17",
        "2024-01-18"
      ]
    
    static let mockSession1 = MovieSessions( ScheduledFilmId: "HO00001620",
                                             Attribute: "SD",
                                             SessionId: "101832",
                                             ShowtimeVista: "2024-01-14T14:00:00",
                                             Showtime: "02:00 PM",
                                             IsAllocatedSeating: false,
                                             SeatsAvailable: 8,
                                             ScreenNumber: 11,
                                             SoldoutStatus: 0,
                                             AllowTicketSales: true
                                             )
    static let mockSession2 = MovieSessions( ScheduledFilmId: "HO00001620",
                                             Attribute: "SD",
                                             SessionId: "101833",
                                             ShowtimeVista: "2024-01-14T15:30:00",
                                             Showtime: "03:30 PM",
                                             IsAllocatedSeating: false,
                                             SeatsAvailable: 8,
                                             ScreenNumber: 11,
                                             SoldoutStatus: 0,
                                             AllowTicketSales: true
                                             )
    static let mockSession3 = MovieSessions( ScheduledFilmId: "HO00001620",
                                             Attribute: "SD",
                                             SessionId: "101834",
                                             ShowtimeVista: "2024-01-14T17:00:00",
                                             Showtime: "05:00 PM",
                                             IsAllocatedSeating: false,
                                             SeatsAvailable: 8,
                                             ScreenNumber: 11,
                                             SoldoutStatus: 0,
                                             AllowTicketSales: true
                                             )
    static let mockSession4 = MovieSessions(  ScheduledFilmId: "HO00001620",
                                              Attribute: "SD",
                                              SessionId: "101835",
                                              ShowtimeVista: "2024-01-14T18:30:00",
                                              Showtime: "06:30 PM",
                                              IsAllocatedSeating: false,
                                              SeatsAvailable: 8,
                                              ScreenNumber: 11,
                                              SoldoutStatus: 0,
                                              AllowTicketSales: true
                                             )
    static let mockSessions = [mockSession1, mockSession2, mockSession3, mockSession4]
    
}
