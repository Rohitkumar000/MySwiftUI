//
//  WKWebView.swift
//  dumbItDown
//
//  Created by USER on 2026/10/21.
//
import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString :String?
   func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safestring = urlString {
            if let url = URL(string: safestring) {
                let request = URLRequest(url: url)
//                if uiView.isLoading {
//                  //  UIViewType.showLoading()
//                }
                uiView.load(request)
            }
        }
    }
}


