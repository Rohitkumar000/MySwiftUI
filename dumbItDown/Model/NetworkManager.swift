//
//  NetworkManager.swift
//  dumbItDown
//
//  Created by USER on 2026/10/20.
//

import Foundation
internal import System
internal import Combine
class NetworkManager: ObservableObject {
   @Published var posts = [Post]()
    func fetchNewsData() {
        if let url = URL(string:"http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task  = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(PostData.self, from: safeData)
                            DispatchQueue.main.async() {
                                self.posts = results.hits }
                        }catch {
                            print("failed to catch the data")
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }

}
