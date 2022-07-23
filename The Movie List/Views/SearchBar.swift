//
//  SearchBar.swift
//  The Movie List
//
//  Created by Truong An Do on 23/07/2022.
//

import SwiftUI

struct SearchBar: View {
    private var listOfMovie = movies1
    @State var searchMovieName = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies1, id: \.self) { movie in
                    HStack {
                        Text(movie.capitalized)
                        Image(systemName: "figure.walk")
                            .foregroundColor(.blue)
                    }
                }
            }
            .searchable(text: $searchMovieName)
            .navigationTitle("Popular Movies")        }
        
    }
    
    var movieList : [String] {
        let lcMovie = listOfMovie.map { $0.lowercased() }
        
        return searchMovieName == "" ? lcMovie : lcMovie.filter {
            $0.contains(searchMovieName.lowercased())
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
