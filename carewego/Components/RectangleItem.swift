//
//  RectangleItem.swift
//  carewego
//
//  Created by Apprenant 63 on 13/12/2021.
//

import SwiftUI

struct RectangleItem: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Suggestions")
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                    .frame(width: 380, height: 250, alignment: .center)
                    .shadow(color: shadowRectangle, radius: 8.0, x: -2.0, y: 2)
                    .padding(.bottom, 6.0)
                    .overlay(
                        VStack {
                            Text("Hospital Ibiza Playa")
                                .font(.title)
                                .fontWeight(.medium)
                                .padding(.bottom, 15.0)
                                .padding(.bottom, 5.0)
                            
                            HStack{
                                VStack(spacing: 5.0) {
                                    Image(systemName: "clock.fill")
                                        .font(.system(size: 25))
                                    Text("Horaires")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                    Text("24/24 - 7/7")
                                        .fontWeight(.medium)
                                    Image(systemName:"paperplane.fill")
                                        .font(.system(size: 25))
                                    Text("Accès à mobilité réduite")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                    
                                }
                                
                                VStack {
                                    Image(systemName: "stethoscope.circle.fill")
                                        .padding(.bottom, 2.0)
                                        .font(.system(size: 25))
                                        .padding([.top, .leading], 7.0)
                                        .font(.system(size: 25))
                                    Text("Urgences Gynécologique")
                                        .fontWeight(.medium)
                                        .font(.system(size: 20))
                                        .multilineTextAlignment(.center)
                                    
                                    
                                }
                                .padding(.trailing, 35)
                                .padding(.bottom)
                            }
                        }
                    )
                Button {
                    print("test")
                } label: {
                    Text("Appeler (+971 334 060)")
                        .fontWeight(.heavy)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(colorPrimary)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                    .frame(width: 380, height: 250, alignment: .center)
                    .shadow(color: shadowRectangle, radius: 8.0, x: -2.0, y: 2)
                    .padding(.bottom, 6.0)
                    .overlay(
                        VStack {
                            Text("Ibiza Medical Center")
                                .font(.title)
                                .fontWeight(.medium)
                                .padding(.bottom, 15.0)
                            
                            HStack{
                                VStack(spacing: 5.0) {
                                    Image(systemName: "clock.fill")
                                        .font(.system(size: 25))
                                    Text("Horaires")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                    Text("Lun-ven")
                                        .fontWeight(.medium)
                                    Text("8h - 21h")
                                        .fontWeight(.light)
                                    Text("Week end")
                                        .fontWeight(.medium)
                                    Text("8h-19h")
                                        .fontWeight(.light)
                                }
                                .padding([.top, .leading ],5.0)
                                
                                VStack(spacing: 5.0) {
                                    Image(systemName: "paperplane.fill")
                                        .padding([.top, .leading], 7.0)
                                        .font(.system(size: 25))
                                    Text("Accès")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                    Text("Langue des signes")
                                        .fontWeight(.medium)
                                        .font(.system(size: 17))
                                    Text("Ascenseurs")
                                        .fontWeight(.medium)
                                        .font(.system(size: 17))
                                    Text("Rampes")
                                        .fontWeight(.medium)
                                        .font(.system(size:17))
                                }
                                .padding(.leading, 35)
                                .padding(.bottom)
                                
                            }
                            
                        }
                        
                    )
                Button {
                    print("test")
                } label: {
                    Text("Appeler (+956 358 997)")
                        .fontWeight(.heavy)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(colorPrimary)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
            }
        }
    }
}

struct RectangleItem_Previews: PreviewProvider {
    static var previews: some View {
        RectangleItem()
    }
}
