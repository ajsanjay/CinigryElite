//
//  MoviesListModel.swift
//  CinigryElite
//
//  Created by jay sabeen on 13/01/24.
//

import Foundation

struct MoviesListModel: Codable {
    let response: String?
    let er_tickets: String?
    let escape_rooms_movies: [MovieContent]
}

struct MovieContent: Codable {
    let ID: String?
    let ScheduledFilmId: String?
    let slug: String?
    let Title: String?
    let Rating: String?
    let RunTime: String?
    let Synopsis: String?
    let image_url: String?
    let image_url_poster: String?
}

struct MockMovieList {
    static let movie1 = MovieContent(ID: "HO00001620", ScheduledFilmId: "HO00001620", slug: "escape-room---bunker-57", Title: "Escape Room - Bunker 57", Rating: "NR", RunTime: "60", Synopsis: "LOS ANGELES, CA. The year is 2039.\r\n\r\nIt's not like the Apocalypse helped, but let's be honest – the World wasn't doing too well anyways. It was supposed to be a vaccine. It was supposed to protect us from the return of Cholera. Who could have predicted the side effects were death, and then reanimation of your corpse? The undead, zombies, Z's, walkers – call them what you will – just shoot for the brain if you see one. You and your friends had been doing OK, scavenging for food, until your camp was overrun with Z's. It was only a small bite, really only a scratch – but you can feel the blackness creeping into your extremities. It's only a matter of time until you turn. You need to break into the abandoned government Bunker 57, pray to God that the antivirus they were working on is viable, and inject it into yourself before time runs out. You have 60 minutes before you have to make a very difficult decision.", image_url: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmPosterGraphic/HO00001620?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500&vista_cache=05102021", image_url_poster: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmTitleGraphic/HO00001620?allowPlaceHolder=true&width=640&height=360&vista_cache=05102021")
    static let movie2 = MovieContent(ID: "HO00001618", ScheduledFilmId: "HO00001618", slug: "escape-room---captains-cove", Title: "Escape Room - Captain's Cove", Rating: "NR", RunTime: "60", Synopsis: "", image_url: "https://cinergyapp.thetunagroup.com/storage/movie_image/230808/cinergy_64d21e7fd133c.jpg", image_url_poster: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmTitleGraphic/HO00001618?allowPlaceHolder=true&width=640&height=360&vista_cache=05102021")
    static let movie3 = MovieContent(ID: "HO00001619", ScheduledFilmId: "HO00001619", slug: "escape-room---gold-rush", Title: "Escape Room - Gold Rush", Rating: "NR", RunTime: "60", Synopsis: "Liberty, Missouri. The year is 1874.\r\n\r\nYou are part of the infamous James-Younger Gang – notorious outlaws of the Wild West. With your leader, Jesse James, laid up with a gunshot wound, it's up to the rest of you to carry out the robbery. Gold – enough for 3 lifetimes, and the priceless Baton Rouge Diamond – are locked in the vault, waiting to be picked up by the militia and transported by armed caravan to Fort Misery. The robbery has to happen tonight. Jesse's most trusted companion, John Younger, is holed up near the bank waiting for the signal. Specific instructions detailing how to break and enter the bank vault have been left for you. Get into the vault and get the loot before the Sheriff arrives. But watch out! There's a bounty on your head, and every cowboy with a gun is trying to cash in.", image_url: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmPosterGraphic/HO00001619?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500&vista_cache=05102021", image_url_poster: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmTitleGraphic/HO00001619?allowPlaceHolder=true&width=640&height=360&vista_cache=05102021")
    static let movie4 = MovieContent(ID: "HO00001622", ScheduledFilmId: "HO00001622", slug: "escape-room---haunted-mansion", Title: "Escape Room - Haunted Mansion", Rating: "NR", RunTime: "60", Synopsis: "Haynesville Woods, Maine. Present day.\r\n\r\nEver since you were a kid, you have been interested in Paranormal activity – and you have seen some stuff that is…well..downright inexplicable. The Laughton Hotel has stories that make your hair stand on end. The Supernatural energy surrounding the hotel is palpable. Most paranormal investigators have declined the offer of exploring these old buildings, but your curiosity got the better of you. Find the secret elevator, get it working, and take it to Floor 23 and get proof the place is truly haunted. And if you believe the superstitions, be sure get out before midnight, as local legend has it that any living thing caught in the hotel at the stroke of midnight becomes part of the spirit world, and gets trapped in the hotel forever!", image_url: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmPosterGraphic/HO00001622?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500&vista_cache=05102021", image_url_poster: "https://tickets.cinergycinemas.com/CDN/media/entity/get/FilmTitleGraphic/HO00001622?allowPlaceHolder=true&width=640&height=360&vista_cache=05102021")
    static let movies = [movie1, movie2, movie3, movie4]
}
