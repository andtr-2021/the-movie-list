//
//  ScrollPageImagesView.swift
//  The Movie List
//
//  Created by Truong An Do on 07/08/2022.
//

import SwiftUI

struct ScrollPageImagesView: View {
    let postImages: ImageModel
    
    var body: some View {
        
        Image(postImages.imageView)
            .resizable()
            .frame(width: 200, height: 300, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 30))
          
    }
}

struct ScrollPageImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPageImagesView(postImages: images[0])
    }
}
