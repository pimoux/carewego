//
//  SearchLocationModal.swift
//  carewego
//
//  Created by Apprenant 60 on 10/12/2021.
//

import SwiftUI

struct SearchLocationModal: View {
    @Binding var searchLocation: SearchLocationType
    
    @State private var toggles: [Bool] = [true, false, false]
    var filters: [SearchLocationType] = [.ville, .pays, .continent]
    var body: some View {
        VStack {
            List(filters, id: \.self) { place in
                HStack {
                    Toggle(isOn: $toggles[place.indexes]) {
                        Text(place.description)
                    }
                    .toggleStyle(SwitchToggleStyle(tint: colorPrimary))
                    .onChange(of: toggles[place.indexes]) { _ in
                        searchLocation = place
                    }
                }
            }
        }
    }
}

struct SearchLocationModal_Previews: PreviewProvider {
    static var previews: some View {
        SearchLocationModal(searchLocation: .constant(.ville))
    }
}
