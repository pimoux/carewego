//
//  PostItem.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct PostItem: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                    .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
                    .shadow(color: shadowRectangle, radius: 8.0, x: -2.0, y: 2)
                    .padding(.horizontal, 15)
                VStack {
                    HStack {
                        Image("Charlotte Leplesis")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 120, maxHeight: 120)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                            .padding(.leading, 10)
                            .padding(.bottom, 20)
                        VStack(alignment: .leading) {
                            Text("Charlotte Leplesis")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .padding(.top, 3.0)
                          
                            Text("Hôtel Seaside Ibiza")
                                .fontWeight(.semibold)
                                .padding(.bottom,-9.0)
                            Text("Ibiza, Espagne")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .padding(.bottom, -9.0)
                        }
                        .padding(.leading,2.0)
                        Spacer()
                    }
                    .padding(.bottom, 25)
                }
            }
            VStack {
                HStack {
                Text("« Bien être et repos ! »")
                    .font(.system(size: 25))
                    .fontWeight(.medium)
                    .padding(.horizontal, 5.0)
                    .padding(.vertical, 10)
                }
            }
            VStack(alignment: .leading) {
                Text("La rééducation sur place m’a permis de me reposer et de continuer mon évolution en sécurité avec le personnel adapté. Merci pour votre gentillesse !")
                Text("#Sunhotel#réeducation#Ibiza")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 15)
            HStack {
                Image("Ibiza 5")
                    .resizable()
                    .scaledToFill()
                Image("Ibiza 6")
                    .resizable()
                    .scaledToFill()
                VStack {
                    Image("toilette")
                        .resizable()
                        .scaledToFit()
                    Image("chambre")
                        .resizable()
                        .scaledToFit()
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 200)
            HStack {
                HStack {
                    Image(systemName: "flame.circle.fill")
                        .padding(.trailing, -11.0)
                    Image(systemName: "flame.circle.fill")
                        .padding(.trailing, -11.0)
                    Image(systemName: "flame.circle.fill")
                        .padding(.trailing, -11.0)
                    Image(systemName: "flame.circle.fill")
                        .padding(.trailing, -11.0)
                    Image(systemName: "flame.circle")
                }
                .foregroundColor(fire)
                Spacer()
                Image(systemName: "arrow.up.circle.fill")
                    .padding(.horizontal, 10)
                    .foregroundColor(fire)
                Image(systemName: "bookmark.circle.fill")
                    .padding(.horizontal, 10)
                    .foregroundColor(colorPrimary)
                Image(systemName: "heart.circle.fill")
                    .padding(.horizontal, 10)
                    .foregroundColor(colorPrimary)
            }
            .padding(.horizontal, 30)
            .font(.title2)
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
