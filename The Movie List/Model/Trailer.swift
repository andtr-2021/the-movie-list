/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Do Truong An
  ID: Your student id: s3878698
  Created  date: 25/7/2022
  Last modified: 7/8/2022
  Acknowledgement: https://www.youtube.com/watch?v=CX-BdDHW0Ho - the code of this whole file 
*/

import SwiftUI
import WebKit


// This struct helps to embedded a movie into the app
struct Trailer : UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let trailerURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return }
        
        uiView.scrollView.isScrollEnabled = false
        
        uiView.load(URLRequest(url: trailerURL))
    }
    
}
