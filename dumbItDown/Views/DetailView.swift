//
//  DetailView.swift
//  dumbItDown
//
//  Created by USER on 2026/10/21.
//

import SwiftUI
import WebKit
struct DetailView: View {
  //  @State var webView = WKWebView()
    let url: String?
    var body: some View {
        
        if let url = url {
          WebView(urlString: url)
           // webView.load(URLRequest(url: URL(string: url)!))
        }
       // Text("Hello, World!")
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

//struct WebView : UIViewRepresentable{
//   let urlString: String?
//    func makeUIView(context: Context) -> some WKWebView {
//        return WKWebView()
//    }
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        guard let safeString = urlString else {return}
//        if let  url = URL(string: safeString) {
//            let request = URLRequest(url: url)
//            uiView.load(request)
//        }
//        
//    }
//}
