//
//  Profile.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Simon")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 130, maxHeight: 130)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                ScrollView {
                    VStack {
                        Register()
                        HStack {
                            Image(systemName: "flame.circle.fill")
                                .font(.title2)
                                .foregroundColor(fire)
                            Text("Mes avis")
                                .font(.title)
                                .fontWeight(.heavy)
                        }
                        HStack{
                            Image("Simon")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 100, maxHeight: 100)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                                .padding(.leading)
                            
                            Text("Grâce à l’application et à l’hôtel Paradise Island, mon premier voyage loin de la France c’est passé à merveille.")
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                                .padding(.trailing, 10)
                        }
                    }
                    .navigationBarTitle(Text("Simon Clément"), displayMode: .inline)
                    .navigationBarItems(leading: Sheet(actionPhoto: "Ajouter une publication", actionReviews: "Ajouter un avis", actionTableau: "Ajouter un tableau",actionMap: "Ajouter un endroit sur la map",actionCommunity: "Aller à Community")
                                            .padding(.top, 30),
                                        trailing: MessageIcon())
                }
            }
            .background(whiteBackground)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .previewDevice("iPhone 12")
    }
}
