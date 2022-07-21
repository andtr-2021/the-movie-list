//
//  MovieDetailView1.swift
//  The Movie List
//
//  Created by Truong An Do on 21/07/2022.
//

import SwiftUI

struct MovieDetailView1: View {
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(height: 50)
                .overlay(
                    HStack {
                        Image(systemName: "person")
                        Text("Director: Jon Watts").bold().foregroundColor(.black)
                    }
                ).padding(10)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(height: 50)
                .overlay(
                    HStack {
                        Image(systemName: "pencil")
                        Text("Main Writers: Chris McKenna").bold().foregroundColor(.black)
                    }
                ).padding(10)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(height: 50)
                .overlay(
                    HStack {
                        Image(systemName: "star")
                        Text("Starring: Tom Holland").bold().foregroundColor(.black)
                    }
                ).padding(10)
        
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(height: 50)
                .overlay(
                    HStack {
                        Image(systemName: "list.and.film")
                        Text("Distributed by : Sony Pictures").bold().foregroundColor(.black)
                    }
                ).padding(10)
        }
        
    }
}

struct MovieDetailView1_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView1()
    }
}
