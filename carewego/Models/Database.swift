//
//  Database.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

var user1: User = User(id: UUID(), username: "Institut Mckenzie", avatar: "mckenzie", isProfessionnal: true, handicaps: nil, savedPosts: nil, savedUsers: nil)
var user2: User = User(id: UUID(), username: "Annecy Rééducation", avatar: "annecy", isProfessionnal: true, handicaps: nil, savedPosts: nil, savedUsers: nil)
var user3: User = User(id: UUID(), username: "Charlotte Leplesis", avatar: "leplesis", isProfessionnal: false, handicaps: [.cardiaque, .malentendant], savedPosts: nil, savedUsers: [user1])
var user4: User = User(id: UUID(), username: "Pearesh Gari", avatar: "pearesh", isProfessionnal: false, handicaps: [.béquilles, .autoimmune], savedPosts: nil, savedUsers: [user2])
var user5: User = User(id: UUID(), username: "Steve Jobs", avatar: "jobs", isProfessionnal: true, handicaps: nil, savedPosts: nil, savedUsers: nil)
var user6: User = User(id: UUID(), username: "Hotel sea side", avatar: "hotelseaside", isProfessionnal: true, handicaps: nil, savedPosts: nil, savedUsers: nil)
var user7: User = User(id: UUID(), username: "Hand'home", avatar: "handhome", isProfessionnal: true, handicaps: nil, savedPosts: nil, savedUsers: nil)

var post1: Post = Post(id: UUID(), user: user3, content: "Bien être et repos à l’Hotel Sun Ibiza. Les installations et le service adapté à la rééducation m’a permis de me reposer mais de continuer mon évolution en sécurité avec le personnel adapté.\n Merci pour votre gentillesse ! Je recommande. #Sunhotel#réeducation#Ibiza ", images: ["ibiza1", "ibiza2"], createdAt: Date(timeIntervalSinceNow: -100000), likes: 18, comments: 7)
var post2: Post = Post(id: UUID(), user: user1, content: "", images: ["ibiza1", "ibiza2"], createdAt: Date(timeIntervalSinceNow: -500), likes: 153, comments: 53)
var post3: Post = Post(id: UUID(), user: user4, content: "", images: nil, createdAt: Date(timeIntervalSinceNow: -3000), likes: 843, comments: 145)
var post4: Post = Post(id: UUID(), user: user2, content: "", images: ["cannes"], createdAt: Date(timeIntervalSinceNow: -1000000), likes: 2, comments: 0)
var post5: Post = Post(id: UUID(), user: user7, content: "", images: nil, createdAt: Date(timeIntervalSinceNow: -500000), likes: 34, comments: 6)

var comment1: Comment = Comment(id: UUID(), user: user3, content: "Super hôtel ! Très à l’écoute de mes besoins, ils m’ont montés mes bagages dans ma chambre. Je recommande.")
var comment2: Comment = Comment(id: UUID(), user: user4, content: "Très bien !")
var comment3: Comment = Comment(id: UUID(), user: user7, content: "J’ai beaucoup aimé le fait que toutes les commodités de l’hôtel soit accessible à pied sans escalier ou avec ascenseur.")
var comment4: Comment = Comment(id: UUID(), user: user7, content: "Service restauration qui laisse à  désirer. Nous avons attendu 30 minutes sans avoir été servi et sans avoir pris notre commande ! Une honte pour un établissement de se standard.")

var location1: Location = Location(id: UUID(), type: .ville, name: "San Francisco", image: "sf")
var location2: Location = Location(id: UUID(), type: .ville, name: "Ubud", image: "ubud")
var location3: Location = Location(id: UUID(), type: .ville, name: "Cancun", image: "cancun")
var location4: Location = Location(id: UUID(), type: .ville, name: "Cannes", image: "cannes")
var location5: Location = Location(id: UUID(), type: .ville, name: "Ibiza", image: "ibiza")
var location6: Location = Location(id: UUID(), type: .ville, name: "Istanbul", image: "istanbul")

var service1: Service = Service(id: UUID(), name: "hotel", images: ["sunhotel1", "sunhotel2", "sunHotel3"], location: location5, type: .hotel, horaires: "24h/24 7j/7", abilities: [.fauteuil, .fauteuilElectriquePliable, .malentendant], rate: 3)
var service2: Service = Service(id: UUID(), name: "Bien être", images: ["bienetre1"], location: location5, type: .bienEtre, horaires: "24h/24 7j/7", abilities: [.malentendant, .autoimmune, .cardiaque], rate: 4)
var service3: Service = Service(id: UUID(), name: "Transport", images: ["transport"], location: location5, type: .transport, horaires: "24h/24 7j/7", abilities: [.fauteuil, .fauteuilElectriquePliable, .malentendant], rate: 5)
var service4: Service = Service(id: UUID(), name: "Santé", images: ["santé"], location: location5, type: .sante, horaires: "24h/24 7j/7", abilities: [.fauteuil, .fauteuilElectriquePliable, .cardiaque, .autoimmune, .béquilles], rate: 5)
var service5: Service = Service(id: UUID(), name: "Aide à domicile", images: ["aideDomicile"], location: location5, type: .aideDomicile, horaires: "24h/24 7j/7", abilities: [.fauteuil, .fauteuilElectriquePliable, .malentendant], rate: 3)
var service6: Service = Service(id: UUID(), name: "Séjour", images: ["sejour"], location: location5, type: .sejour, horaires: "24h/24 7j/7", abilities: [.fauteuil, .fauteuilElectriquePliable, .malentendant], rate: 2)
