//
//  IndividualNavigationBar.swift
//  The Movie List
//
//  Created by Truong An Do on 21/07/2022.
//

import SwiftUI

struct IndividualNavigationBar: View {
    var body: some View {
        HStack {
            Image("spiderman-no-way-home").resizable().frame(width: 45, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text("Spider-Man: No Way Home").font(.callout).bold()
        }
    }
}

struct IndividualNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        IndividualNavigationBar()
    }
}



