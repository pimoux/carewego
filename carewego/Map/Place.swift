//
//  Place.swift
//  MapTest
//
//  Created by Apprenant 60 on 13/12/2021.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    var id = UUID().uuidString
    var place: CLPlacemark
}
