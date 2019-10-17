//
//  DetailView.swift
//  HackerNewsApp
//
//  Created by Murat Alagöz on 17.10.2019.
//  Copyright © 2019 Murat Alagöz. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}
struct WebView:UIViewRepresentable {
    
    
    let urlString: String?
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WebView.UIViewType {
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
