//
//  Chat.swift
//  carewego
//
//  Created by Apprenant 71 on 09/12/2021.
//

import SwiftUI

struct Chat: View {
    @State private var searchUser: String = ""
    var users: [String] = ["Institut McKenzie", "Annecy Rééducation", "Charlotte Leplesis", "Pearesh Gari", "Steve Jobs", "Hotel Sea Side"]
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search", text: $searchUser)
                        }
                        .padding(10)
                        .background(colorLightGrayField)
                        .cornerRadius(8)
                    }
                    .padding()
                    if users[0].contains(searchUser) || searchUser.isEmpty {
                        HStack {
                            Image("InstitutMcEnzie")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 90, maxHeight: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(fire, lineWidth: 4))
                            VStack(alignment: .leading) {
                                Text(users[0])
                                    .font(.headline)
                                
                                Text("3 nouveaux messages")
                                    .font(.headline)
                            }
                            Spacer()
                            Image(systemName: "bookmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(colorPrimary)
                        }
                        .padding(.vertical)
                    }
                    
                    if users[1].contains(searchUser) || searchUser.isEmpty {
                        HStack {
                            Image("AnnecyReeducation2")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 90, maxHeight: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(fire, lineWidth: 4))
                            VStack(alignment: .leading) {
                                Text(users[1])
                                    .font(.headline)
                                Text("Je confirme le rendez vous")
                            }
                            Spacer()
                            
                            Image(systemName: "bookmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(colorPrimary)
                        }
                        .padding(.vertical)
                    }
                    
                    if users[2].contains(searchUser) || searchUser.isEmpty {
                        HStack {
                            Image("Charlotte Leplesis")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 90, maxHeight: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                            VStack(alignment: .leading) {
                                Text(users[2])
                                    .font(.headline)
                                Text("Ce voyage était super!")
                            }
                            Spacer()
                            Image(systemName: "bookmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(colorPrimary)
                        }
                        .padding(.vertical)
                    }
                    
                    if users[3].contains(searchUser) || searchUser.isEmpty {
                        HStack {
                            Image("PeareshGari")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 90, maxHeight: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(colorPrimary, lineWidth: 4))
                            VStack(alignment: .leading) {
                                Text(users[3])
                                    .font(.headline)
                                Text("En ligne")
                            }
                            Spacer()
                            
                            Image(systemName: "bookmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(colorPrimary)
                        }
                        .padding(.vertical)
                    }
                    
                    if users[4].contains(searchUser) || searchUser.isEmpty {
                        HStack {
                            Image("steve_jobs")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 90, maxHeight: 90)
                                .border(fire)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(fire, lineWidth: 4))
                            VStack(alignment: .leading) {
                                Text(users[4]).font(.headline)
                                Text("Bonne journée!")
                            }
                            Spacer()
                            Image(systemName: "bookmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(colorPrimary)
                        }
                        .padding(.vertical)
                    }
                    
                    if users[5].contains(searchUser) || searchUser.isEmpty {
                        HStack {
                            Image("HotelSeaSide")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 90, maxHeight: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(fire, lineWidth: 4))
                            VStack(alignment: .leading) {
                                Text(users[5]).font(.headline)
                                Text("En ligne il ya 2h").foregroundColor(Color.gray)
                            }
                            Spacer()
                            Image(systemName: "bookmark.circle.fill")
                                .font(.title2)
                                .foregroundColor(colorPrimary)
                        }
                        .padding(.vertical)
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle(Text("Messages"), displayMode: .inline)
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

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
