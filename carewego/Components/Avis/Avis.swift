//
//  Avis.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct Avis: View {
    @State private var searchUser: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(systemName:"flame.circle.fill")
                        .foregroundColor(fire)
                        .font(.title)
                        .padding(.leading,20.0)
                    Text("Avis")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                    
                    Spacer()
                    HStack {
                        Image(systemName: "flame.fill")
                            .padding(.trailing, -11.0)
                        Image(systemName: "flame.fill")
                            .padding(.trailing, -11.0)
                        Image(systemName: "flame.fill")
                            .padding(.trailing, -11.0)
                        Image(systemName: "flame.fill")
                            .padding(.trailing, -11.0)
                        Image(systemName: "flame")
                    }
                    .font(.largeTitle)
                    .foregroundColor(fire)
                    .padding(.trailing, 30)
                }
                .padding(.top, 30)
                HStack {
                    Image("Charlotte Leplesis")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 60, maxHeight: 60)
                        .cornerRadius(90)
                        .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                        .padding()
                    VStack(alignment: .leading) {
                    }
                    CommentItem(commentContent: "La réeducation sur place m'a appris de me reposer et de continuer mon évolution en securité avec le personnel adapté. Merci !")
                }
                .padding()
                HStack {
                    Image("PeareshGari")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 60, maxHeight: 60)
                        .cornerRadius(90)
                        .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                        .padding()
                    VStack(alignment: .leading) {
                    }
                    CommentItem(commentContent: "Trés bien ! Ma femme à profité de son voyage en toute tranquillité.")
                }
                .padding()
                HStack {
                    Image("Simon & Natalia")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 60, maxHeight: 60)
                        .cornerRadius(90)
                        .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                        .padding()
                    VStack(alignment: .leading) {
                    }
                    CommentItem(commentContent: "J'ai beaucoup aimé le fait que toutes les commodités de l'hotêl soit acessible à pied sans escalier ou avec ascenseur.")
                }
                .padding()
                HStack {
                    Image("Cat")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 60, maxHeight: 60)
                        .cornerRadius(90)
                        .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                        .padding()
                    VStack(alignment: .leading) {
                    }
                    CommentItem(commentContent: "Je regrette la cuisine de l'hôtel ainsi que les restaurants à proximité qui n'ont pas du tout facilité l'état de santé de ma mère !")
                }
                .padding()
                Spacer()
            }
        }
        .navigationBarTitle(Text("Sea Side Ibiza"), displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.uturn.backward")
        })
    }
}

struct Avis_Previews: PreviewProvider {
    static var previews: some View {
        Avis()
    }
}
