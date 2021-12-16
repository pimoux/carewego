//
//  SeaSideIbiza.swift
//  carewego
//
//  Created by Apprenant 60 on 15/12/2021.
//

import SwiftUI

struct SeaSideIbiza: View {
    var body: some View {
        ScrollView {
            Description()
            Avis()
        }
        .background(whiteBackground)
    }
}

struct SeaSideIbiza_Previews: PreviewProvider {
    static var previews: some View {
        SeaSideIbiza()
    }
}
