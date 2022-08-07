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

struct EmbeddedTrailer: View {
    var body: some View {
        Trailer(videoID: "JfVOs4VSpmA")
            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
            .cornerRadius(5)
            .padding(.horizontal, 24)
        
        
    }
}

struct EmbeddedTrailer_Previews: PreviewProvider {
    static var previews: some View {
        EmbeddedTrailer()
    }
}
