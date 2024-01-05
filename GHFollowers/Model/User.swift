//
//  User.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 5.01.2024.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String? // Isim girmemis olabilir
    var location: String? // location girmemis olabilir]
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
