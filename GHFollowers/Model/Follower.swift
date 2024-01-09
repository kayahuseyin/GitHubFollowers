//
//  Follower.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 5.01.2024.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String // Kesin gelecegi icin optional yapmiyoruz
    var avatarUrl: String
}


/* Sadece login'i hashable yapmak isteseydim:
 
 struct Follower: Codable, Hashable {
 
    var login: String
    var avatarUrl: String
 
    func hash(into hasher: inout Hasher) {
        hasher.combine(login)
    }
 }
 
 */
