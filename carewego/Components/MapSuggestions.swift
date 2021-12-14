//
//  MapSuggestions.swift
//  carewego
//
//  Created by Apprenant 60 on 13/12/2021.
//

import SwiftUI

struct MapSuggestions: View {
    @Binding var isOpen: Bool
    var body: some View {
        VStack(alignment: .center) {
            Button {
                self.isOpen = true
            } label: {
                Text("Afficher les suggestions")
                    .fontWeight(.heavy)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(colorPrimary)
                    .cornerRadius(8)
            }
            .sheet(isPresented: $isOpen) {
                MapModal()
            }
        }
    }
}

struct MapSuggestions_Previews: PreviewProvider {
    static var previews: some View {
        MapSuggestions(isOpen: .constant(false))
    }
}
