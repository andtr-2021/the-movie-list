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
            List (movies1, id: \.self) { movie in
                    HStack {
                        Text(movie.capitalized)
                        Spacer()
                        Image(systemName: "figure.walk")
                            .foregroundColor(.blue)
                    }
                    .padding()
            }
            .searchable(text: $searchMovieName)
            .navigationTitle("Films")
        }
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


