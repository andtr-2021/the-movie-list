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
                    Text("\"There is not thing better than watching a good movie after completing all your works.\"")
                        .multilineTextAlignment(.center)
                        .padding()
    
                
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(alignment: .center, spacing: 150) {
                                ForEach(images, id: \.id) { post in
                                    VStack {
                                        Image(post.imageView)
                                            .resizable()
                                            .frame(width: 200, height: 350, alignment: .center)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                        
                                    } // VStack
                                    
                           }
                        }.padding(.horizontal, 95)
                        
                    } // Scroll View
                    
                    Spacer()
                    
                    HStack {
                       
                        Text("View 1: This is a movie list.").bold().foregroundColor(.black)
                    }.padding(5)
                    
                    HStack {
                        Text("View 2 : Search a movie but its name.").bold().foregroundColor(.black)
                    }.padding(5)
                    
                    HStack {
                        Text("View 3: This's the detail infor a movie.").bold().foregroundColor(.black)
                    }.padding(5)
                        
                    
                    
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
