//
//  FinalNavigationBars.swift
//  The Movie List
//
//  Created by Truong An Do on 22/07/2022.
//

import SwiftUI

struct FinalNavigationBars: View {
    var body: some View {
        
        List (movies, id: \.self.name) { movie in
            IndividualNavigationBar(movie: movie)
            
        }
    }
}

struct FinalNavigationBars_Previews: PreviewProvider {
    static var previews: some View {
        FinalNavigationBars()
    }
}
