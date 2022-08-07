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
    
                
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(alignment: .center, spacing: 150) {
                                ForEach(images, id: \.id) { post in
                                    Image(post.imageView)
                                        .resizable()
                                        .frame(width: 200, height: 350, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                           }
                        }.padding(.horizontal, 95)
                            
                    }
                    
                    Spacer()
                    
                    Button {
                        isWelcomeActive = false
                    } label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.7))
                            .frame(width: 250, height: 80, alignment: .center)
                            .overlay(
                                Text("Get Started")
                                    .font(.system(.title3, design: .rounded)).foregroundColor(.black)

                            )
                    } // Butoon
                    
                } // VStack
                
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
