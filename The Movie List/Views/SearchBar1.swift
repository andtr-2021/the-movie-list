//
//  SearchBar1.swift
//  The Movie List
//
//  Created by Truong An Do on 23/07/2022.
//

import SwiftUI

struct SearchBar1: View {
    private var listOfMovie = movies
    @State var searchMovieName = ""
    
    var body: some View {
        NavigationView {
            List (searchMovies, id: \.self.name) { movie in
                NavigationLink {
                    ScrollPage(movie: movie)
                } label: {
                    IndividualNavigationBar(movie: movie)
                    
                }
            }
            .searchable(text: $searchMovieName)
            .navigationTitle("Films")
        }
    }
    
    var searchMovies : [Movie] {
        if searchMovieName.isEmpty{
            return movies
        } else {
            return movies.filter {$0.name.lowercased().contains(searchMovieName.lowercased())}
        }
        
    }
}

struct SearchBar1_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar1()
    }
}


