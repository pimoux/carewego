//
//  SecondPostItem.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct SecondPostItem: View {
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
                        Image("PeareshGari")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 120, maxHeight: 120)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                            .padding(.leading, 10)
                            .padding(.bottom, 30)
                        VStack(alignment: .leading) {
                            Text("Pearesh Gari")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .padding(.top, 3.0)
                          
                            Text("Ile Christmas")
                                .fontWeight(.semibold)
                                .padding(.bottom,-9.0)
                            Text("Melbourne, Australie")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .padding(.bottom, -9.0)
                        }
                        .padding(.leading,2.0)
                        Spacer()
                    }
                    .padding(.bottom, 5)
                }
            }
            VStack {
                HStack {
                Text("La plongée c'est incroyable !")
                    .font(.system(size: 25))
                    .fontWeight(.medium)
                    .padding(.horizontal, 5.0)
                    .padding(.vertical, 10)
                }
            }
            VStack(alignment: .leading) {
                Text("Superbe séance de plongée à Melbourne malgré mes problèmes d'audition ! J'avais déjà vu des vidéos montrant les fonds marins, mais en vrai c'est tellement incroyable de voir cet écosystème particulier !")
                Text("#Melbourne#AcademyOfScuba")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 15)
            .padding(.bottom, 20)
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
                    Image(systemName: "flame.circle.fill")
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

struct SecondPostItem_Previews: PreviewProvider {
    static var previews: some View {
        SecondPostItem()
    }
}
