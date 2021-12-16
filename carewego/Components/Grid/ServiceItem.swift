//
//  ServiceItem.swift
//  carewego
//
//  Created by Apprenant 63 on 10/12/2021.
//

import SwiftUI

struct ServiceItem: View {
    var service: Service
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(service.images[0])
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        VStack {
                            Spacer()
                            Text(service.name)
                                .foregroundColor(.white)
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(Rectangle().fill().cornerRadius(8, corners: [.bottomLeft, .bottomRight]).opacity(0.5))
                        }
                    )
                    .cornerRadius(8)
                    .frame(maxWidth: 200, maxHeight: 200)
            }
        }
    }
}


struct ServiceItem_Previews: PreviewProvider {
    static var previews: some View {
        ServiceItem(service: service4)
    }
}
