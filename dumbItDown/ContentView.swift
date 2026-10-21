//
//  ContentView.swift
//  dumbItDown
//
//  Created by USER on 2026/10/19.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) {post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.Points ?? 0))
                        Text(post.title)
                    }
                }
//                HStack{
//                    Text(String(post.Points ?? 0))
//                    Text(post.title)
//                }
               // Text("Hello, world!")
            }
            .navigationTitle("hello Gig")
        }
        .onAppear {
            networkManager.fetchNewsData()
        }
//       VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}


//struct Post: Identifiable {
//    let id = UUID()
//    let title: String
//}
//
//let posts: [Post] = [
//    Post(id: "12" ,title: "Hello, world!"),
//    Post (id: "1",title: "Hello, world!")
//]
