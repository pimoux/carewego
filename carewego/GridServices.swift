//
//  GridServices.swift
//  carewego
//
//  Created by Apprenant 63 on 10/12/2021.
//

import SwiftUI

struct GridServices: View {
    var place: String
    @State private var searchCity: String = ""
    @State private var isOpen: Bool = false
    var gridLayout: [GridItem] = [
        GridItem(.adaptive(minimum: 170)),
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
            ScrollView {
                VStack(alignment: .leading) {
                    Text(place)
                        .font(.title)
                        .bold()
                        .padding(.leading, 4)
                        .navigationBarTitle("Services disponible ", displayMode: .inline)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $searchCity)
                    }
                    .padding(10)
                    .background(colorLightGrayField)
                    .cornerRadius(8)
                    Spacer()
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        ForEach(Service.services) { service in
                                ServiceItem(service: service)
                        }
                    }
                    .padding(.top, 20)
                }
                .sheet(isPresented: $isOpen) {
                    SearchServiceModal()
                }
                .navigationBarItems(trailing: Button(action: {
                    self.isOpen = true
                }, label: {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        .foregroundColor(darkGray)
                }))
                .padding(.horizontal, 20)
                .padding(.top, 20)
            }
    }
}

struct GridServices_Previews: PreviewProvider {
    static var previews: some View {
        GridServices(place: "Ibiza")
    }
}
