//
//  ContentView.swift
//  HackerNewsApp
//
//  Created by Murat Alagöz on 17.10.2019.
//  Copyright © 2019 Murat Alagöz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack {
                    Text(String(post.points));                   Text(post.title)
                }
      
        }
        .navigationBarTitle("HackerNews")
    }
        .onAppear {
            self.networkManager.fetchData()
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//let posts = [
//    Post(id: "1", title: "Hello"),
//     Post(id: "2", title: "Bonjour"),
//      Post(id: "3", title: "Merhaba")
//]
//
