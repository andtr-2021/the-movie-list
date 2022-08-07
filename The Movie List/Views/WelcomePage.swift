//
//  WelcomePage.swift
//  The Movie List
//
//  Created by Truong An Do on 05/08/2022.
//

import SwiftUI
import UIKit

struct WelcomePage: View {

    @State var isWelcomeActive : Bool = true
    @State var introText : String = ""
    @State var screenShot : String = ""
    
    let images: [ImageModel] = [
    .init(id: 0, imageView: "list-view"),
    .init(id: 1, imageView: "search-view"),
    .init(id: 2, imageView: "detail-view"),
    ]
    
    var body: some View {
        
        if isWelcomeActive {
            ZStack {
                Color("RedLogo").ignoresSafeArea(.all)
                
                VStack {
                  
                    Text("Welcome")
                        .font(.system(size: 50, weight: .heavy)).foregroundColor(.white)
                    Text("To The Movie List.")
                        .font(.system(size: 20)).fontWeight(.bold)
                    Text("\"There is not thing better than \n watching a good movie \nafter completing all your works.\"")
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Here is all the things \n that you can do with the app. Have fun!").multilineTextAlignment(.center)
                        .padding()
    
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 150) {
                                ForEach(images, id: \.id) { post in
                                    Image(post.imageView)
                                        .resizable()
                                        .frame(width: 200, height: 300, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                           }
                        }
                    }
                            .padding(.horizontal, 127)
                            
                    }
                    
                    
                    Spacer()
                    
                    
                    Button {
                        isWelcomeActive = false
                    } label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.7))
                            .frame(width: 250, height: 80, alignment: .center)
                            .padding(.horizontal, 125)
                            .overlay(
                                Text("Get Started")
                                    .font(.system(.title3, design: .rounded))
                                    .foregroundColor(.black)
                                    
                            )
                    } // Butoon
                } // ZStack
            } else {
            SearchBar1()
        }
        
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
