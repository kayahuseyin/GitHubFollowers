//
//  Follower.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 5.01.2024.
//

import Foundation

struct Follower: Codable {
    var login: String // Kesin gelecegi icin optional yapmiyoruz
    var avatarUrl: String
}
