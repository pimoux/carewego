//
//  ContentView.swift
//  carewego
//
//  Created by Apprenant 60 on 08/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Feed()
                .tabItem {
                    Image(systemName: "line.3.horizontal.circle.fill")
                }
            GridDestinations()
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2.fill")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }
            LocationMap()
                .tabItem {
                    Image(systemName: "location.square.fill")
                }
        }
        .accentColor(colorPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
