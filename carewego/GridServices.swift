//
//  GridServices.swift
//  carewego
//
//  Created by Apprenant 63 on 10/12/2021.
//

import SwiftUI

struct GridServices: View {
    var place: String
    
    @State private var searchServices: String = ""
    @State private var isOpen: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
                        .padding(.bottom, 1.0)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $searchServices)
                    }
                    .padding(10)
                    .background(colorLightGrayField)
                    .cornerRadius(8)
                    Spacer()
                    LazyVGrid(columns: gridLayout, spacing: 8) {
                        ForEach(Service.services.filter({
                        "\($0.type.description.lowercased())".contains(searchServices.lowercased()) ||
                            searchServices.isEmpty
                        })) { service in
                            if service.type == .hotel {
                                NavigationLink(destination: SeaSideIbiza()) {
                                    ServiceItem(service: service)
                                }
                            } else {
                                ServiceItem(service: service)
                            }
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
            .navigationBarTitle(Text("Services disponible"), displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "arrow.uturn.backward")
            })
            .background(whiteBackground)
    }
}

struct GridServices_Previews: PreviewProvider {
    static var previews: some View {
        GridServices(place: "Ibiza")
    }
}
