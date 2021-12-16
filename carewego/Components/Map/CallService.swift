//
//  CallService.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct CallService: View {
    @State private var ShowActionSheet = false
    var numero: String
    var hospitalName: String
    var body: some View {
        VStack {
            Button {
                self.ShowActionSheet = true
            } label: {
                Text("Appeler (\(numero))")
                    .fontWeight(.heavy)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(colorPrimary)
                    .cornerRadius(8)
            }
            Button("") {
                
            }.actionSheet(isPresented: $ShowActionSheet){
                ActionSheet(title: Text(hospitalName), buttons: [
                    
                    .default(Text("Appeler (\(numero))")) {
                        //Action
                        print("Appeler (\(numero))")
                    },
                    
                        .cancel()
                ])
                
                
            }
        }
    }
}

struct CallService_Previews: PreviewProvider {
    static var previews: some View {
        CallService(numero: "0898989898", hospitalName: "Ibiza Medical Center")
    }
}
