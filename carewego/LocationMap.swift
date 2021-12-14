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
                trailing:
                    ZStack {
                        NavigationLink(destination: Chat()) {
                            Image(systemName: "envelope.circle.fill")
                                .foregroundColor(darkGray)
                                .font(.system(size: 20))
                        }
                        Circle()
                            .fill(.red)
                            .frame(width: 20, height: 20)
                            .position(x: 32, y: 4)
                    }
            )
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
