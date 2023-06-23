//
//  BlogModel.swift
//  Bloger
//
//  Created by Oliver Zheng on 6/19/23.
//

import Foundation

struct Blog: Codable, Hashable, Identifiable {
    
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    
    static let mock = [
        Blog(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto")
    ]
}
