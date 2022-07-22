//
//  Movie.swift
//  The Movie List
//
//  Created by Truong An Do on 22/07/2022.
//

import Foundation
import SwiftUI

struct Movie {
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
}

