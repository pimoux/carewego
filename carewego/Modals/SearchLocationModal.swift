//
//  SearchLocationModal.swift
//  carewego
//
//  Created by Apprenant 60 on 10/12/2021.
//

import SwiftUI



struct SearchLocationModal: View {
    @Binding var searchMobility: [Handicap]
    @State private var handicapToggles: [Bool] = [false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    var handicapsFilter: [Handicap] = [.fauteuil, .fauteuilElectrique, .fauteuilElectriquePliable, .déambulateur, .malvoyant, .troubleMentaux, .diabète, .grossesse, .autisme, .malentendant, .pulmonaire, .autoimmune, .béquilles, .cardiaque]
    var body: some View {
        VStack {
            List {
                Section(header: Text("Mobilité")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .font(.system(size: 26))
                            .textCase(nil)
                            .padding(.bottom, 2)
                ) {
                    ForEach(handicapsFilter, id: \.self) { mobility in
                        HStack {
                            Toggle(isOn: $handicapToggles[mobility.index]) {
                                Text(mobility.description)
                            }
                            .toggleStyle(SwitchToggleStyle(tint: colorPrimary))
                            .onChange(of: handicapToggles[mobility.index]) { _ in
                                if handicapToggles[mobility.index] {
                                    searchMobility.append(mobility)
                                } else {
                                    if let i = searchMobility.firstIndex(of: mobility) {
                                        searchMobility.remove(at: i)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SearchLocationModal_Previews: PreviewProvider {
    static var previews: some View {
        SearchLocationModal(searchMobility: .constant([]))
    }
}
