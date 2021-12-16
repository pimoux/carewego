//
//  Register.swift
//  carewego
//
//  Created by Apprenant 63 on 16/12/2021.
//

import SwiftUI

struct Register: View {
    var enregistrements = register.enregistrement
    var historiques = ["Turquie1","hotel1","Annecylake1","Lisbonne1","Bathroom1"]
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                HStack{
                    Image(systemName: "bookmark.circle.fill")
                        .font(.title2)
                        .foregroundColor(colorPrimary)
                    Text("Enregistrements")
                        .font(.title)
                        .fontWeight(.heavy)
                }
            }
            ScrollView(.horizontal) {
                HStack {
                    ForEach(historiques, id: \.self) { historique in
                        Image(historique)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 150, maxHeight: 150)
                            .cornerRadius(8)
                    }
                }
            }
            .padding(.bottom, 20)
            VStack(alignment: .center) {
                HStack {
                    Image(systemName: "heart.circle.fill")
                        .font(.title2)
                        .foregroundColor(colorPrimary)
                    Text("Historique")
                        .font(.title)
                        .fontWeight(.heavy)
                }
                .padding(.bottom,-4.0)
            }
            VStack(alignment: .leading) {
                ForEach(enregistrements) { enregistrement in
                    HStack {
                        Image(enregistrement.images)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 60, maxHeight: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(purple, lineWidth: 4))
                            .padding(.leading)
                        Text(enregistrement.name)
                            .fontWeight(.medium)
                            .font(.system(size: 22))
                            .padding(.trailing)
                            .padding(.leading)
                    }
                }
                .padding(.top)
            }
        }
    }
    
    struct Register_Previews: PreviewProvider {
        static var previews: some View {
            Register()
        }
    }
}
