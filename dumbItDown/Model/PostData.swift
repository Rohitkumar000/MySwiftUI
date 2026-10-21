//
//  PostData.swift
//  dumbItDown
//
//  Created by USER on 2026/10/20.
//

import Foundation
struct PostData: Decodable {
    let hits:[Post]
    
}

struct Post: Decodable , Identifiable {
    var id: String { objectID }
    let objectID:String
    let Points:Int?
    let title:String
    let url:String?
}
