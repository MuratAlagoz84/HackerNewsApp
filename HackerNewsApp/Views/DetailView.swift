//
//  DetailView.swift
//  HackerNewsApp
//
//  Created by Murat Alagöz on 17.10.2019.
//  Copyright © 2019 Murat Alagöz. All rights reserved.
//

import SwiftUI

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

