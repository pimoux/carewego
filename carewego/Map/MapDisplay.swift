//
//  MapDisplay.swift
//  carewego
//
//  Created by Apprenant 60 on 13/12/2021.
//

import SwiftUI
import CoreLocation

struct MapDisplay: View {
    @StateObject var mapData = MapViewModel()
    @State var locationManager = CLLocationManager()
    
    var body: some View {
        ZStack {
            MapView()
                .environmentObject(mapData)
            VStack {
                VStack(spacing: 0) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search", text: $mapData.searchText)
                            .colorScheme(.light)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.white)
                    
                    if !mapData.places.isEmpty && mapData.searchText != "" {
                        ScrollView {
                            VStack(spacing: 15) {
                                ForEach(mapData.places) { place in
                                    Text(place.place.name ?? "")
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading)
                                        .onTapGesture {
                                            mapData.selectPlace(place: place)
                                        }
                                    
                                    Divider()
                                }
                            }
                            .padding(.top)
                        }
                        .background(Color.white)
                    }
                }
                .padding()
                
                Spacer()
                
                VStack {
                    Button {
                        mapData.focusLocation()
                    } label: {
                        Image(systemName: "location.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(colorPrimary)
                            .clipShape(Circle())
                    }
                    Button {
                        mapData.updateMapType()
                    } label: {
                        Image(systemName: mapData.mapType == .standard ? "network" : "map")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(colorPrimary)
                            .clipShape(Circle())
                    }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
            }
        }
        .onAppear(perform: {
            locationManager.delegate = mapData
            locationManager.requestWhenInUseAuthorization()
        })
        .alert(isPresented: $mapData.permissionDenied) {
            Alert(
                title: Text("Permission denied"),
                message: Text("Please enable permission in app settings"),
                dismissButton: .default(Text("Goto settings"))
            )
        }
        .onChange(of: mapData.searchText) { newValue in
            let delay = 0.3
            
            DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                if newValue == mapData.searchText {
                    self.mapData.searchQuery()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 500)
    }
}

struct MapDisplay_Previews: PreviewProvider {
    static var previews: some View {
        MapDisplay().previewDevice("iPhone 12")
    }
}
