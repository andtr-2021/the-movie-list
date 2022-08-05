//
//  EmbeddedTrailer.swift
//  The Movie List
//
//  Created by Truong An Do on 05/08/2022.
//

import SwiftUI

struct EmbeddedTrailer: View {
    var body: some View {
        Trailer(videoID: "JfVOs4VSpmA")
            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
            .cornerRadius(5)
            .padding(.horizontal, 24)
        
        
    }
}

struct EmbeddedTrailer_Previews: PreviewProvider {
    static var previews: some View {
        EmbeddedTrailer()
    }
}
