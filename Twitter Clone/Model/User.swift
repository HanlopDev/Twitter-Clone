//
//  User.swift
//  Twitter Clone
//
//  Created by Hanaf on 06/03/2024.
//

import Foundation

struct ApiResponse: Decodable{
    var user: User
    var token: String
}

struct User: Decodable, Identifiable{
    var _id: String
    var id: String {
        return _id
    }
    let usernamr: String
    let name: String
    let email: String
    var location: String?
    var bio: String?
    var website: String?
    var avatarExist: String?
    var follower: [String]
    var following: [String]
    
    
}
