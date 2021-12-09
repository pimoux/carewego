//
//  Structures.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

struct User: Identifiable {
    static let users = [user1, user2, user3, user4, user5, user6, user7]
    var id = UUID()
    var username: String
    var avatar: String
    var isProfessionnal: Bool
    var handicaps: [Handicap]?
    var savedPosts: [Post]?
    var savedUsers: [User]?
}

struct Comment: Identifiable {
    static let comments = [comment1, comment2, comment3, comment4]
    var id = UUID()
    var user: User
    var content: String
}

struct Post: Identifiable {
    static let posts = [post1, post2, post3, post4, post5]
    var id = UUID()
    var user: User
    var content: String
    var images: [String]?
    var createdAt: Date
    var likes: Int
    var comments: Int
}

struct Location: Identifiable {
    static let locations = [location1, location2, location3, location4, location5, location6]
    var id = UUID()
    var type: SearchLocationType
    var name: String
    var image: String
}

struct Service: Identifiable {
    static let services = [service1, service2, service3, service4, service5, service6]
    var id = UUID()
    var name: String
    var images: [String]
    var location: Location
    var type: SearchServiceType
    var horaires: String
    var handicapAbilities: [Handicap]
    var rate: Double
}
