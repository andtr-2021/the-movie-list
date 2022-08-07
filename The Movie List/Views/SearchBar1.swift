/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Do Truong An
  ID: Your student id: s3878698
  Created  date: 25/7/2022
  Last modified: 7/8/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/


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


