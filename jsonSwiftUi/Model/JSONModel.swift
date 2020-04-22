//
//  JSONModel.swift
//  jsonSwiftUi
//
//  Created by Anton Asetski on 4/23/20.
//  Copyright © 2020 Anton Asetski. All rights reserved.
//

import Foundation

struct Response: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points:Int
    let title: String
    let url: String?
}

