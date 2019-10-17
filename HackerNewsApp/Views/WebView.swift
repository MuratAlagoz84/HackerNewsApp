//
//  WebView.swift
//  HackerNewsApp
//
//  Created by Murat Alagöz on 17.10.2019.
//  Copyright © 2019 Murat Alagöz. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView:UIViewRepresentable {
    
    
    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

}
