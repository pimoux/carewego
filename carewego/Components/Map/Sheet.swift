//
//  Sheet.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct Sheet: View {
    @State private var showActionSheet = false
    var actionPhoto: String
    var actionReviews: String
    var actionTableau : String
    var actionMap : String
    var actionCommunity : String
    var body: some View {
        VStack {
            Button {
                self.showActionSheet = true
            } label: {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(darkGray)
            }
            Button("") {
                
            }.actionSheet(isPresented: $showActionSheet){
                ActionSheet(title: Text(actionPhoto), buttons: [
                    .default(Text("Ajouter une photo")) {
                        //Action
                        print("Ajouter une photo")
                    },
                    .default(Text(actionReviews)) {
                        //Action
                        print("Ajouter un avis")
                    },
                    .default(Text(actionTableau)) {
                        //Action
                        print("Créer un tableau")
                    },
                    .default(Text(actionMap)) {
                        //Action
                        print("Marquer un endroit")
                    },
                    .default(Text(actionCommunity)) {
                        //Action
                        print("Aller à Community")
                    },
                    .cancel()
                ])
            }
        }
    }
}

struct Sheet_Previews: PreviewProvider {
    static var previews: some View {
        Sheet(actionPhoto: "test", actionReviews: "test2", actionTableau: "test3", actionMap: "test4", actionCommunity: "test5")
    }
}
