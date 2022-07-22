//
//  MovieDetailView.swift
//  The Movie List
//
//  Created by Truong An Do on 21/07/2022.
//

import SwiftUI

struct MovieDetailView: View {
    var body: some View {
        ZStack {
            Image("spiderman-no-way-home")
                .resizable()
                .frame(width: 200, height: 300, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(.red), lineWidth: 10))
            
            
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieDetailView()
        }
    }
}
