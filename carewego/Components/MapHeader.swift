//
//  MapHeader.swift
//  carewego
//
//  Created by Apprenant 60 on 13/12/2021.
//

import SwiftUI

struct MapHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image(systemName: "pin.fill")
                    .foregroundColor(fire)
                Text("Ibiza")
                    .fontWeight(.semibold)
                    .bold()
                Text("1036km")
                    .fontWeight(.thin)
            }
            .font(.system(size: 26))
            HStack {
                Image(systemName: "star.circle.fill")
                    .foregroundColor(colorPrimary)
                    .font(.system(size: 26))
                VStack(alignment: .leading) {
                    Text("Itinéraires recommandés")
                        .fontWeight(.medium)
                    Text("A moins de 2km")
                        .fontWeight(.thin)
                }
                Text("Voir")
                    .fontWeight(.heavy)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(colorPrimary)
                    .cornerRadius(8)
            }
        }
    }
}

struct MapHeader_Previews: PreviewProvider {
    static var previews: some View {
        MapHeader()
    }
}
