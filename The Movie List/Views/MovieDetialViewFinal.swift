//
//  MovieDetialViewFinal.swift
//  The Movie List
//
//  Created by Truong An Do on 21/07/2022.
//

import SwiftUI

struct MovieDetialViewFinal: View {
    var movie : Movie
    
    var body: some View {
        ZStack {
            
            Color(UIColor.systemIndigo).ignoresSafeArea(.all, edges: .bottom)
            
            VStack {
                movie.image.resizable()
                    .frame(width: 200, height: 300, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(.red), lineWidth: 10)).padding(30)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "film")
                            Text("Name: \(movie.name)").bold().foregroundColor(.black)
                        })
                        
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "person")
                            Text("Director: \(movie.director)").bold().foregroundColor(.black)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "square.and.pencil")
                            Text("Main Writer:  \(movie.mainWriter)").bold().foregroundColor(.black)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "star")
                            Text("Starring:  \(movie.starring)").bold().foregroundColor(.black)
                        }
                    )
            
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "list.and.film")
                            Text("Distribution :  \(movie.distribute)").bold().foregroundColor(.black)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "info.circle")
                            Text("About the film:  \(movie.aboutTheFilm)").bold().foregroundColor(.black)
                        }
                    )
            }
            
            
        }
    }
}

struct MovieDetialViewFinal_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetialViewFinal(movie: movies[0])
        MovieDetialViewFinal(movie: movies[1])
    }
}
