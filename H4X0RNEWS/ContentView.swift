//
//  ContentView.swift
//  H4X0RNEWS
//
//  Created by  Mr.Ki on 28.12.2021.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView {
    
            List(networkManager.posts) {
            post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
       
          //  .padding()
    }
        .navigationTitle("H4X0RNEWS")
    }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//Post(id: "1", title: "Hello1"),
//    Post(id: "2", title: "Hello2"),
//    Post(id: "3", title: "Hello3")
//]
//
