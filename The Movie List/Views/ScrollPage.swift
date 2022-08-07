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

struct ScrollPage: View {
    var movie : Movie
    
    var body: some View {
        ZStack{
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    movie.image.resizable()
                        .frame(width: 200, height: 300, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color(.red), lineWidth: 10))
                        .padding(.horizontal, 95)
                        .padding(.vertical, 20)
                    
                    Group {
                        
                        
                    
                        HStack {
                            Image(systemName: "person")
                            Text("Director: \(movie.director)").bold().foregroundColor(.black)
                        }
                        HStack {
                            Image(systemName: "square.and.pencil")
                            Text("Main Writer:  \(movie.mainWriter)").bold().foregroundColor(.black)
                        }
                        
                        HStack {
                            Image(systemName: "star")
                            Text("Starring:  \(movie.starring)").bold().foregroundColor(.black)
                        }
            
                        HStack {
                            Image(systemName: "list.and.film")
                            Text("Distribution :  \(movie.distribute)").bold().foregroundColor(.black)
                                
                        }
          
                        HStack {
                            Image(systemName: "info.circle")
                            Text("About the film:  \(movie.aboutTheFilm)")
                                .bold().foregroundColor(.black)
                        }
                        
                        HStack {
                            Image(systemName: "airplayvideo")
                            Text("Trailer:")
                                .bold().foregroundColor(.black)
                                
                        }
                            
                        
                    } // Group
                    .padding(.horizontal, 60)
                    
                    Trailer(videoID: movie.trailerID)
                        .frame(minWidth: 300, minHeight: 200)
                        .cornerRadius(5)
                        .padding(.horizontal, 24)
                    
                                         
                 } // VStack
            }

        }
        
            
    }
}

    


struct ScrollPage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPage(movie: movies[2])
    }
}
