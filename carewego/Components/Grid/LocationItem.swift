//
//  LocationItem.swift
//  carewego
//
//  Created by Apprenant 60 on 10/12/2021.
//

import SwiftUI

struct LocationItem: View {
    var location: Location
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(location.image)
                .resizable()
                .scaledToFill()
                .overlay(
                    VStack {
                        Spacer()
                        Text(location.name)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.title2)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Rectangle().fill().cornerRadius(8, corners: [.bottomLeft, .bottomRight]).opacity(0.5))
                    }
                )
                .cornerRadius(8)
                .frame(maxWidth: 200, maxHeight: 200)
        }
    }
}

struct LocationItem_Previews: PreviewProvider {
    static var previews: some View {
        LocationItem(location: location1)
    }
}
