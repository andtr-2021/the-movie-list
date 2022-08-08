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

import Foundation
import SwiftUI

// This is a struct for the movie datatype including all the infor of each movie 
struct Movie: Hashable {
    var name: String
    var director: String
    var mainWriter: String
    var starring : String
    var distribute : String
    var aboutTheFilm : String
    
    var imageName : String
    var image : Image {
        Image(imageName)
    }
    
    let trailerID : String
}

