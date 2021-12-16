//
//  Description.swift
//  carewego
//
//  Created by Apprenant 71 on 14/12/2021.
//

import SwiftUI

struct Description: View {
    var body: some View {
        VStack {
            Image("HotelHeaderImage")
                .resizable()
                .scaledToFill()
                .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .cornerRadius(6)
                .padding(.horizontal, 10.0)
            Spacer()
                .font(.headline)
            ScrollView(.horizontal){
                Spacer()
                HStack {
                    Image("chambre")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("toilette")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("Seaside1")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("Seaside3")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("Seaside5")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("Seaside44")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("Seaside11")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                    Image("Seaside22")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 150, height: 150)
                }
                .padding()
            }
            Spacer()
            Text("Dates disponibles")
                .fontWeight(.heavy)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .foregroundColor(.white)
                .background(colorPrimary)
                .cornerRadius(8)
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                    .frame(width: 250, height: 110, alignment: .center)
                    .shadow(color: shadowRectangle, radius: 8.0, x: -2.0, y: 2)
                    .overlay(VStack(alignment: .leading){
                        HStack {
                            Image(systemName: "flame.circle.fill")
                                .foregroundColor(fire)
                            Text("Centre de réeducation")
                                .font(.headline)
                        }
                        HStack {
                            Image(systemName: "flame.circle.fill")
                                .foregroundColor(fire)
                            Text("Balnéotheraphie")
                                .font(.headline)
                        }
                        HStack {
                            Image(systemName: "flame.circle.fill")
                                .foregroundColor(fire)
                            Text("Accés a mobilité reduite")
                                .font(.headline)
                            
                        }
                       
                    })
            }
            .padding()
            HStack {
            Text("Description")
                .fontWeight(.bold)
                .padding()
                .font(.system(size: 25))
                Spacer()
           
            }
            Text("L'Hotel Sea Side met tout en oeuvre pour rendre votre séjour aussi agréable et relaxant que possible.")
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
        }
    }
}
    
struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description()
    }
}
