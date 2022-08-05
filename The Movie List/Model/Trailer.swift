//
//  Trailer.swift
//  The Movie List
//
//  Created by Truong An Do on 05/08/2022.
//

import SwiftUI
import WebKit

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
