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

struct MovieDetialViewFinal: View {
    var movie : Movie
    
    var body: some View {
        ZStack {
            
            Color(UIColor.systemIndigo)
                .ignoresSafeArea(.all)
            
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
            
            
        }.navigationTitle(movie.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieDetialViewFinal_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetialViewFinal(movie: movies[0])
        MovieDetialViewFinal(movie: movies[1])
    }
}
