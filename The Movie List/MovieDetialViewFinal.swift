//
//  MovieDetialViewFinal.swift
//  The Movie List
//
//  Created by Truong An Do on 21/07/2022.
//

import SwiftUI

struct MovieDetialViewFinal: View {
    var body: some View {
        ZStack {
            
            Color(UIColor.systemIndigo).ignoresSafeArea(.all, edges: .bottom)
            
            VStack {
                Image("spiderman-no-way-home")
                    .resizable()
                    .frame(width: 200, height: 300, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color(.red), lineWidth: 10)).padding(30)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "film")
                            Text("Name: Spider-Man No Way Home").bold().foregroundColor(.black)
                        })
                        
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "person")
                            Text("Director: Jon Watts").bold().foregroundColor(.black)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "square.and.pencil")
                            Text("Main Writer: Chris McKenna").bold().foregroundColor(.black)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "star")
                            Text("Starring: Tom Holland").bold().foregroundColor(.black)
                        }
                    )
            
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "list.and.film")
                            Text("Distributed by : Sony Pictures").bold().foregroundColor(.black)
                        }
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(width: 350, height: 50)
                    .overlay(
                        HStack {
                            Image(systemName: "info.circle")
                            Text("About the film: ").bold().foregroundColor(.black)
                        }
                    )
            }
            
            
        }
    }
}

struct MovieDetialViewFinal_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetialViewFinal()
    }
}
