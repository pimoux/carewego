//
//  Feed.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import SwiftUI

struct Feed: View {
    @State private var sendComment: String = ""
    @State private var search: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        TextField("Donnez votre avis", text: $sendComment)
                            .keyboardType(.default)
                        Image(systemName: "plus.square")
                            .padding(.leading, 10)
                    }
                    .padding(.vertical, 10.0)
                    .padding(.horizontal, 8)
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10.0)
                    .font(.title2)
                    PostItem()
                        .padding(.vertical)
                    ProfessionnalPostItem()
                        .padding(.vertical)
                    SecondPostItem()
                }
                .navigationBarTitle("Fil d'actualités", displayMode: .inline)
                .navigationBarItems(
                    leading: Sheet(actionPhoto: "Que voulez vous faire ?", actionReviews: "Créer une publication", actionTableau: "Créer un tableau", actionMap: "Marquer un endroit sur la map", actionCommunity: "Voir mes contacts").padding(.top, 30),
                    trailing: HStack {
                        Image(systemName: "gearshape.circle.fill")
                            .foregroundColor(colorLightGray)
                        MessageIcon()
                    }
                        .font(.system(size: 20))
                )
            }
            .background(whiteBackground)
        }.accentColor(.black)
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
            .previewDevice("iPhone 12")
    }
}
