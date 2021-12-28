//
//  PostData.swift
//  H4X0RNEWS
//
//  Created by  Mr.Ki on 28.12.2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
