//
//  Views.swift
//  carewego
//
//  Created by Apprenant 71 on 13/12/2021.
//

import SwiftUI

struct CommentItem: View {
    var commentContent: String
    var body: some View {
        VStack {
            ZStack {
                whiteBackground
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                    .frame(width: 279, height: 130, alignment: .center)
                    .shadow(color: shadowRectangle, radius: 8.0, x: -2.0, y: 2)
                Text(commentContent)
                    .fontWeight(.medium)
                    .padding()
            }
            
        }
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(commentContent: "test j lhlhl hjjhjkh kjhkhkjhk hjjhkkhj lhjlhjlh jhkjh kjhkjh hjh ljhlh lhj lhj ")
    }
}
