//
//  MessageIcon.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct MessageIcon: View {
    var body: some View {
        ZStack {
            NavigationLink(destination: Chat()) {
                Image(systemName: "envelope.circle.fill")
                    .foregroundColor(darkGray)
                    .font(.system(size: 20))
            }
            Circle()
                .fill(.red)
                .frame(width: 20, height: 20)
                .position(x: 32, y: 4)
        }
    }
}

struct MessageIcon_Previews: PreviewProvider {
    static var previews: some View {
        MessageIcon()
    }
}
