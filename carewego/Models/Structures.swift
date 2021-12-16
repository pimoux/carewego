//
//  Structures.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    static let users = [user1, user2, user3, user4, user5, user6, user7]
    var id = UUID()
    var username: String
    var avatar: String
    var isProfessionnal: Bool
    var handicaps: [Handicap]
    var savedPosts: [Post]
    var savedUsers: [User]
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
    var images: [String]
    var createdAt: Date
    var likes: Int
    var comments: Int
}

struct Message: Identifiable {
    static let messages: [Message] = [message1, message2, message3, message4, message5, message6]
    var id = UUID()
    var user: User
    var isLatestMessageSeen: Bool
    var latestMessage: String
}

struct Location: Identifiable {
    static let locations = [location1, location2, location3, location4, location5, location6, location7, location8, location9, location10, location11, location12, location13, location14, location15, location16, location17, location18, location19, location20, location21, location22, location23, location24, location25, location26]
    var id = UUID()
    var type: SearchLocationType
    var supported: [Handicap]
    var name: String
    var image: String
}

struct Service: Identifiable {
    static let services = [service1, service2, service3, service4, service5, service6, service7, service8, service9, service10]
    var id = UUID()
    var name: String
    var images: [String]
    var location: Location
    var type: SearchServiceType
    var rate: Double
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct register: Identifiable {
    static let enregistrement = [enregistrement1, enregistrement2, enregistrement3]
    var id = UUID()
    var name: String
    var images: String
}
