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

struct IndividualNavigationBar: View {
    var movie : Movie
    var body: some View {
        HStack {
            movie.image.resizable().frame(width: 45, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(movie.name).font(.callout).bold()
        }
    }
}

struct IndividualNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        IndividualNavigationBar(movie : movies[0])
        IndividualNavigationBar(movie : movies[1])
        IndividualNavigationBar(movie : movies[2])
    }
}



