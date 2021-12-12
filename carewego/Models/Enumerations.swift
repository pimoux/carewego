//
//  Enumerations.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

enum Handicap {
    case pulmonaire, cardiaque, autisme, autoimmune, grossesse, diabète, troubleMentaux, malvoyant, malentendant, déambulateur, béquilles, fauteuil, fauteuilElectrique, fauteuilElectriquePliable
}

enum SearchLocationType {
    case ville, pays, continent
    
    var description: String {
        switch self {
        case .ville: return "Ville"
        case .pays: return "Pays"
        case .continent: return "Continent"
        }
    }
    
    var indexes: Int {
        switch self {
        case .ville: return 0
        case .pays: return 1
        case .continent: return 2
        }
    }
}

enum SearchServiceType {
    case transport, hotel, bienEtre, sante, aideDomicile, sejour, accompagnement, activites
}
