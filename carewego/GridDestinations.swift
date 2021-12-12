//
//  GridDestinations.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import SwiftUI

struct GridDestinations: View {
    
    @State private var searchLocation: SearchLocationType = .ville
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
                    Text(
                        searchLocation.description == "Pays" ?
                         searchLocation.description :
                            "\(searchLocation.description)s"
                    )
                        .font(.title)
                        .bold()
                        .padding(.leading, 4)
                        .navigationBarTitle("Recherche de destination", displayMode: .inline)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $searchCity)
                            .keyboardType(.default)
                    }
                    .padding(10)
                    .background(colorLightGrayField)
                    .cornerRadius(8)
                    Spacer()
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        ForEach(Location.locations.filter({
                            ("\($0.name.lowercased())".contains(searchCity.lowercased()) ||
                             searchCity.isEmpty) && searchLocation == $0.type
                        })) { location in
                            NavigationLink(destination: GridServices(place: location.name)) {
                                LocationItem(location: location)
                            }
                        }
                    }
                    .padding(.vertical, 20)
                }
                .sheet(isPresented: $isOpen) {
                    SearchLocationModal(searchLocation: $searchLocation)
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
        .accentColor(.black)
    }
}

struct GridDestinations_Previews: PreviewProvider {
    static var previews: some View {
        GridDestinations()
            .previewDevice("iPhone 13")
    }
}
