//
//  ProfessionnalPostItem.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct ProfessionnalPostItem: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(.white)
                .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                .shadow(color: shadowRectangle, radius: 8.0, x: -2.0, y: 2)
                .padding(.horizontal, 15)
            VStack {
                HStack {
                    Image("Aide a domicile")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 80, maxHeight: 80)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(fire, lineWidth: 4))
                        .padding(.leading, 30)
                    VStack(alignment: .leading) {
                        Text("Hand'home")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .padding(.top, 3.0)
                        Text("Genève, Suisse")
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .padding(.bottom, -9.0)
                        
                    }
                    Spacer()
                }
                .padding(.bottom, 25)
                Text("Aide à domicile pour vos séjours au ski dans la région de Genève.")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .padding([.leading, .bottom, .trailing], 35.0)
            }
        }
    }
}

struct ProfessionnalPostItem_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionnalPostItem()
    }
}
