//
//  LocationMap.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import SwiftUI



struct LocationMap: View {
    @State private var isOpen: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                MapHeader()
                MapDisplay()
                MapSuggestions(isOpen: $isOpen)
            }
            .navigationBarTitle(Text("Map"), displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(
                leading: Image(systemName: "square.and.arrow.up")
                    .foregroundColor(colorLightGray)
                    .font(.system(size: 20)),
                trailing: MessageIcon()
            )
            .background(whiteBackground)
        }
        .accentColor(.black)
    }
}

struct LocationMap_Previews: PreviewProvider {
    static var previews: some View {
        LocationMap()
            .previewDevice("iPhone 12")
    }
}
