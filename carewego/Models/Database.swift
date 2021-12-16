//
//  Database.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

var user1: User = User(
    id: UUID(),
    username: "Institut Mckenzie",
    avatar: "mckenzie",
    isProfessionnal: true,
    handicaps: [],
    savedPosts: [],
    savedUsers: [user3, user4, user6]
)

var user2: User = User(
    id: UUID(),
    username: "Annecy Rééducation",
    avatar: "annecy",
    isProfessionnal: true,
    handicaps: [],
    savedPosts: [],
    savedUsers: [user4]
)

var user3: User = User(
    id: UUID(),
    username: "Charlotte Leplesis",
    avatar: "leplesis",
    isProfessionnal: false,
    handicaps: [.cardiaque, .malentendant],
    savedPosts: [post1, post2],
    savedUsers: [user1]
)

var user4: User = User(
    id: UUID(),
    username: "Pearesh Gari",
    avatar: "pearesh",
    isProfessionnal: false,
    handicaps: [.béquilles, .autoimmune, .malentendant],
    savedPosts: [post4],
    savedUsers: [user2]
)

var user5: User = User(
    id: UUID(),
    username: "Steve Jobs",
    avatar: "jobs",
    isProfessionnal: true,
    handicaps: [],
    savedPosts: [post3],
    savedUsers: []
)

var user6: User = User(
    id: UUID(),
    username: "Hotel sea side",
    avatar: "hotelseaside",
    isProfessionnal: true,
    handicaps: [],
    savedPosts: [],
    savedUsers: []
)

var user7: User = User(
    id: UUID(),
    username: "Hand'home",
    avatar: "handhome",
    isProfessionnal: true,
    handicaps: [],
    savedPosts: [],
    savedUsers: [user4, user2]
)

var currentUser: User = User(
    id: UUID(),
    username: "Hugo Ribaud",
    avatar: "hugoRibaud",
    isProfessionnal: false,
    handicaps: [.fauteuil, .autoimmune],
    savedPosts: [post1, post2],
    savedUsers: [user4]
)

var post1: Post = Post(
    id: UUID(),
    user: user3,
    content: "Bien être et repos à l’Hotel Sun Ibiza. Les installations et le service adapté à la rééducation m’a permis de me reposer mais de continuer mon évolution en sécurité avec le personnel adapté.\n Merci pour votre gentillesse ! Je recommande. #Sunhotel#réeducation#Ibiza ",
    images: ["ibiza1", "ibiza2"],
    createdAt: Date(timeIntervalSinceNow: 60 * 60 * -1),
    likes: 18,
    comments: 7
)

var post2: Post = Post(
    id: UUID(),
    user: user1,
    content: "",
    images: ["ibiza1"],
    createdAt: Date(timeIntervalSinceNow: 60 * 60 * 24 * 4 * -1),
    likes: 153,
    comments: 53
)

var post3: Post = Post(
    id: UUID(),
    user: user4,
    content: "Superbe service de la part de Annecy Rééducation ! ",
    images: [],
    createdAt: Date(timeIntervalSinceNow: 60 * 60 * 24 * 45 * -1),
    likes: 843,
    comments: 145
)

var post4: Post = Post(
    id: UUID(),
    user: user2,
    content: "Brunch a l'hotel de cannes, un sacré plaisir !",
    images: ["cannes"],
    createdAt: Date(timeIntervalSinceNow: 60 * 60 * 24 * 140 * -1),
    likes: 2,
    comments: 0
)

var post5: Post = Post(
    id: UUID(),
    user: user7,
    content: "Malgré ses soucis de santé et de mobilité nous avons pu aider cette personne ! UN véritable exemple de courage",
    images: ["userFauteuilRoulant"],
    createdAt: Date(timeIntervalSinceNow: 60 * 8 * -1),
    likes: 34,
    comments: 6
)

var comment1: Comment = Comment(
    id: UUID(),
    user: user3,
    content: "Super hôtel ! Très à l’écoute de mes besoins, ils m’ont monté mes bagages dans ma chambre. Je recommande."
)

var comment2: Comment = Comment(
    id: UUID(),
    user: user4,
    content: "Très bien !"
)

var comment3: Comment = Comment(
    id: UUID(),
    user: user7,
    content: "J’ai beaucoup aimé le fait que toutes les commodités de l’hôtel soient accessible à pied sans escalier où avec ascenseur."
)

var comment4: Comment = Comment(
    id: UUID(),
    user: user7,
    content: "Service restauration qui laisse à désirer. Nous avons attendu 30 minutes sans avoir été servi et sans avoir pris notre commande ! Une honte pour un établissement de ce standard."
)

var location1: Location = Location(id: UUID(), type: .ville, supported: [.fauteuil, .fauteuilElectrique, .fauteuilElectriquePliable], name: "San Francisco", image: "sanfrancisco")
var location2: Location = Location(id: UUID(), type: .ville, supported: [.béquilles], name: "Ubud", image: "ubud")
var location3: Location = Location(id: UUID(), type: .ville, supported: [.déambulateur, .malentendant], name: "Cancun", image: "cancun")
var location4: Location = Location(id: UUID(), type: .ville, supported: [.autisme, .malvoyant], name: "Cannes", image: "cannes")
var location5: Location = Location(id: UUID(), type: .ville, supported: [.fauteuilElectriquePliable], name: "Ibiza", image: "ibiza")
var location6: Location = Location(id: UUID(), type: .ville, supported: [.diabète, .grossesse, .pulmonaire], name: "Istanbul", image: "istanbul")
var location7: Location = Location(id: UUID(), type: .ville, supported: [.malentendant, .fauteuilElectriquePliable], name: "Maldives", image: "maldives")
var location8: Location = Location(id: UUID(), type: .ville, supported: [.pulmonaire, .cardiaque], name: "Sydney", image: "sydney")
var location9: Location = Location(id: UUID(), type: .ville, supported: [.autoimmune, .troubleMentaux], name: "Petra", image: "petra")
var location10: Location = Location(id: UUID(), type: .ville, supported: [], name: "Shanghai", image: "shanghai")

var location11: Location = Location(id: UUID(), type: .pays, supported: [], name: "Brésil", image: "bresil")
var location12: Location = Location(id: UUID(), type: .pays, supported: [], name: "Australie", image: "australie")
var location13: Location = Location(id: UUID(), type: .pays, supported: [], name: "Italie", image: "italie")
var location14: Location = Location(id: UUID(), type: .pays, supported: [], name: "Thailande", image: "thailande")
var location15: Location = Location(id: UUID(), type: .pays, supported: [], name: "Espagne", image: "espagne")
var location16: Location = Location(id: UUID(), type: .pays, supported: [], name: "Portugal", image: "portugal")
var location17: Location = Location(id: UUID(), type: .pays, supported: [], name: "Indonésie", image: "indonesie")
var location18: Location = Location(id: UUID(), type: .pays, supported: [], name: "France", image: "france")

var location19: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Amérique du Nord", image: "ameriquedunord")
var location20: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Asie", image: "asie")
var location21: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Europe", image: "europe")
var location22: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Océanie", image: "oceanie")
var location23: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Orient", image: "orient")
var location24: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Caraibes", image: "caraibes")
var location25: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Grand Nord", image: "grandnord")
var location26: Location = Location(id: UUID(), type: .horizon, supported: [], name: "Afrique", image: "afrique")



var service1: Service = Service(
    id: UUID(),
    name: "Transport",
    images: ["transport"],
    location: location5,
    type: .transport,
    rate: 3
)

var service2: Service = Service(
    id: UUID(),
    name: "Hôtel",
    images: ["Hotel"],
    location: location5,
    type: .hotel,
    rate: 4
)

var service3: Service = Service(
    id: UUID(),
    name: "Bien être",
    images: ["Bienetre"],
    location: location5,
    type: .bienEtre,
    rate: 5
)

var service4: Service = Service(
    id: UUID(),
    name: "Santé",
    images: ["Sante"],
    location: location5,
    type: .sante,
    rate: 5
)

var service5: Service = Service(
    id: UUID(),
    name: "Aide à domicile",
    images: ["Aide a domicile"],
    location: location5,
    type: .aideDomicile,
    rate: 3
)

var service6: Service = Service(
    id: UUID(),
    name: "Séjour",
    images: ["Sejour"],
    location: location5,
    type: .sejour,
    rate: 2
)

var service7: Service = Service(
    id: UUID(),
    name: "Activités",
    images: ["Activite-winter"],
    location: location6,
    type: .activites,
    rate: 4
)


var service8: Service = Service(
    id: UUID(),
    name: "Accompagnement",
    images: ["Accompagnement"],
    location: location7,
    type: .accompagnement,
    rate: 4
)

var service9: Service = Service(
    id: UUID(),
    name: "Collectivités",
    images: ["Collectivite"],
    location: location7,
    type: .collectivites,
    rate: 4
)

var service10: Service = Service(
    id: UUID(),
    name: "Associations",
    images: ["Association"],
    location: location7,
    type: .accompagnement,
    rate: 4
)

var message1: Message = Message(id: UUID(), user: user1, isLatestMessageSeen: false, latestMessage: "3 nouveaux messages")
var message2: Message = Message(id: UUID(), user: user2, isLatestMessageSeen: true, latestMessage: "Je confirme le rendez vous")
var message3: Message = Message(id: UUID(), user: user3, isLatestMessageSeen: true, latestMessage: "Ce voyage était super !")
var message4: Message = Message(id: UUID(), user: user4, isLatestMessageSeen: true, latestMessage: "En ligne")
var message5: Message = Message(id: UUID(), user: user5, isLatestMessageSeen: true, latestMessage: "Bonne journée ! Il y a 4j")
var message6: Message = Message(id: UUID(), user: user6, isLatestMessageSeen: true, latestMessage: "En ligne il y a 2h")

var enregistrement1: register = register(
    id: UUID(),
    name: "Vous avez enregistré Sea Side Ibiza dans le tableau « Vacances 2022 »",
    images: "HotelSeaSide2"
)
var enregistrement2: register = register(
    id: UUID(),
    name: "Vous avez enregistré Sonia Carighi dans contacts»",
    images: "Simon & Natalia"
)
var enregistrement3: register = register(
    id: UUID(),
    name: "Vous avez récemment ajouter « Give a fork » sur la map»",
    images: "Simon"
)
