//
//  IndividualNavigationBar.swift
//  The Movie List
//
//  Created by Truong An Do on 21/07/2022.
//

import SwiftUI

struct IndividualNavigationBar: View {
    var movie : Movie
    var body: some View {
        HStack {
            movie.image.resizable().frame(width: 45, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(movie.name).font(.callout).bold()
        }
    }
}

struct IndividualNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        IndividualNavigationBar(movie : movies[0])
        IndividualNavigationBar(movie : movies[1])
        IndividualNavigationBar(movie : movies[2])
    }
}



