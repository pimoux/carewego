//
//  Structures.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var username: String
    var avatar: String
    var isProfessionnal: Bool
    var handicaps: [Handicap]
    var savedPosts: [Post]?
    var savedUsers: [User]?
}

struct Comment: Identifiable {
    var id = UUID()
    var user: User
    var content: String
}

struct Post: Identifiable {
    var id = UUID()
    var user: User
    var content: String
    var images: [String]?
    var likes: Int
    var comments: Int
}

struct Location: Identifiable {
    var id = UUID()
    var type: SearchLocationType
    var name: String
    var image: String
}

struct Service: Identifiable {
    var id = UUID()
    var name: String
    var images: [String]
    var location: Location
    var horaires: String
    var abilities: [Handicap]
    var rate: Double
}
