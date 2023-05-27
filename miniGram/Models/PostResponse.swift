//
//  PostResponse.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 27/5/23.
//

import Foundation

struct PostResponse: Decodable {
    var data: [Post]?
    var meta: Meta?
}

struct Meta: Decodable {
    var page : Int?
    var pageSize : Int?
    var pageCount : Int?
    var total : Int?
}
