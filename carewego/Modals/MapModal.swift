//
//  MapModal.swift
//  carewego
//
//  Created by Apprenant 63 on 13/12/2021.
//

import SwiftUI

struct MapModal: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack() {
                Image(systemName: "pin.fill")
                    .foregroundColor(fire)
                    .padding(.leading)
                Text("Ibiza")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                Text("1036km")
                    .fontWeight(.thin)
                
            }
            .font(.system(size: 26))
            Spacer()
            
            ZStack {
                whiteBackground
                    .ignoresSafeArea()
                RectangleItem()
            }
        }
        .background(whiteBackground)
    }
}
struct MapModal_Previews: PreviewProvider {
    static var previews: some View {
        MapModal()
    }
}

