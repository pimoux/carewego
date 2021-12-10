//
//  GridDestinations.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import SwiftUI

struct GridDestinations: View {
    
    @State private var searchCity: String = ""
    @State private var isOpen: Bool = false
    
    var gridLayout: [GridItem] = [
        GridItem(.adaptive(minimum: 200)),
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Villes")
                        .font(.title)
                        .bold()
                        .padding(.leading, 4)
                        .navigationBarTitle("Recherche de destination", displayMode: .inline)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $searchCity)
                    }
                    .padding(10)
                    .background(colorLightGrayField)
                    .cornerRadius(8)
                    Spacer()
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        ForEach(Location.locations.filter({
                            "\($0.name)".contains(searchCity) || searchCity.isEmpty
                        })) { location in
                                LocationItem(location: location)
                        }
                    }
                    .padding(.vertical, 20)
                }
                .sheet(isPresented: $isOpen) {
                    SearchLocationModal()
                }
                .navigationBarItems(trailing: Button(action: {
                    self.isOpen = true
                }, label: {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        .foregroundColor(darkGray)
                }))
                .padding(20)
            }
        }
    }
}

struct GridDestinations_Previews: PreviewProvider {
    static var previews: some View {
        GridDestinations()
            .previewDevice("iPhone 13")
    }
}
