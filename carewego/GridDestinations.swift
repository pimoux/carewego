//
//  GridDestinations.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import SwiftUI

struct GridDestinations: View {
    
    @State private var searchLocation: SearchLocationType = .ville
    @State private var searchMobility: [Handicap] = []
    @State private var searchCity: String = ""
    @State private var isOpen: Bool = false
    var locationsFilter: [SearchLocationType] = [.ville, .pays, .horizon]
    
    var gridLayout: [GridItem] = [
        GridItem(.adaptive(minimum: 200)),
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Picker("Filtrer par", selection: $searchLocation) {
                        ForEach(locationsFilter, id: \.self) {
                            Text($0.description.firstCapitalized)
                        }
                    }
                    .pickerStyle(.segmented)
                    Text(searchLocation.description.firstCapitalized)
                        .font(.title)
                        .bold()
                        .padding([.leading, .bottom], 1.0)
                        .navigationBarTitle("Recherche de destination", displayMode: .inline)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .padding(.leading, 10)
                        TextField("Search", text: $searchCity)
                            .keyboardType(.default)
                    }
                    .padding(.vertical, 10.0)
                    .background(colorLightGrayField)
                    .cornerRadius(8)
                    Spacer()
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        ForEach(Location.locations.filter({
                            ("\($0.name.lowercased())".contains(searchCity.lowercased()) || searchCity.isEmpty) &&
                            searchLocation == $0.type
                        })) { location in
                            NavigationLink(destination: GridServices(place: location.name)) {
                                LocationItem(location: location)
                            }
                        }
                    }
                    .padding(.vertical, 20)
                }
                .sheet(isPresented: $isOpen) {
                    SearchLocationModal(
                        searchMobility: $searchMobility
                    )
                }
                .navigationBarItems(trailing: Button(action: {
                    self.isOpen = true
                }, label: {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        .foregroundColor(darkGray)
                }))
                .padding(20)
            }
            .background(whiteBackground)
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
