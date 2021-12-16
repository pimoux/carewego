//
//  SearchServiceModal.swift
//  carewego
//
//  Created by Apprenant 63 on 10/12/2021.
//

import SwiftUI

struct SearchServiceModal: View {
    @State private var serviceToggles: [Bool] = [false, false, false, false, false, false, false, false, false, false]
    var ServicesType : [SearchServiceType] = [.transport, .hotel, .bienEtre, .sante, .aideDomicile, .sejour, .accompagnement, .activites,.associations,.collectivites]
    var body: some View {
        VStack {
            List {
                Section(header: Text("Services")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .font(.system(size: 26))
                            .textCase(nil)
                            .padding(.bottom,2.0)
                ) {
                    ForEach(ServicesType, id: \.self) { service in
                        HStack {
                            Toggle(isOn: $serviceToggles[service.index]) {
                                Text(service.description)
                            }
                            .toggleStyle(SwitchToggleStyle(tint: colorPrimary))
                        }
                    }
                }
            }
        }
    }
}



struct SearchServiceModal_Previews: PreviewProvider {
    static var previews: some View {
        SearchServiceModal()
    }
}
