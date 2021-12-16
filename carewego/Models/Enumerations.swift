//
//  Enumerations.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

enum Handicap {
    case pulmonaire, cardiaque, autisme, autoimmune, grossesse, diabète, troubleMentaux, malvoyant, malentendant, déambulateur, béquilles, fauteuil, fauteuilElectrique, fauteuilElectriquePliable
    
    var description: String {
        switch self {
        case .pulmonaire: return "Maladies pulmonaires"
        case .cardiaque: return "Maladies cardiaques"
        case .autisme: return "Autisme"
        case .autoimmune: return "Maladies autoimmune"
        case .grossesse: return "Grossesse"
        case .diabète: return "Diabète"
        case .troubleMentaux: return "Troubles mentaux"
        case .malvoyant: return "Malvoyant"
        case .malentendant: return "Malentendant"
        case .déambulateur: return "Déambulateur"
        case .béquilles: return "Béquilles"
        case .fauteuil: return "Fauteuil"
        case .fauteuilElectrique: return "Fauteuil électrique"
        case .fauteuilElectriquePliable: return "Fauteuil électrique pliable"
        }
    }
    
    var index: Int {
        switch self {
        case .pulmonaire: return 10
        case .cardiaque: return 13
        case .autisme: return 8
        case .autoimmune: return 11
        case .grossesse: return 7
        case .diabète: return 6
        case .troubleMentaux: return 5
        case .malvoyant: return 4
        case .malentendant: return 9
        case .déambulateur: return 3
        case .béquilles: return 12
        case .fauteuil: return 0
        case .fauteuilElectrique: return 1
        case .fauteuilElectriquePliable: return 2
        }
    }
}

enum SearchLocationType {
    case ville, pays, horizon
    
    var description: String {
        switch self {
        case .ville: return "villes"
        case .pays: return "pays"
        case .horizon: return "horizon"
        }
    }
}

enum SearchServiceType {
    case transport, hotel, bienEtre, sante, aideDomicile, sejour, accompagnement, activites, associations, collectivites, alimentaire
    
    var description: String {
        switch self {
        case .transport: return "Transport"
        case .hotel: return "Hôtel"
        case .bienEtre: return "Bien être"
        case .sante: return "Santé"
        case .aideDomicile: return "Aide à domicile"
        case .sejour: return "Séjour"
        case .accompagnement: return "Accompagnement"
        case .activites: return "Activités"
        case .associations: return "Associations"
        case .collectivites: return "Collectivités locales"
        case .alimentaire: return "Alimentaire"
        }
    }
    
    var index: Int {
        switch self {
        case .transport: return 0
        case .hotel: return 1
        case .bienEtre: return 2
        case .sante: return 3
        case .aideDomicile: return 4
        case .sejour: return 5
        case .accompagnement: return 6
        case .activites: return 7
        case .associations: return 8
        case .collectivites: return 9
        case .alimentaire: return 10
        }
    }
}
