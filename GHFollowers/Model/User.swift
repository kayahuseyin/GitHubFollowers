//
//  User.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 5.01.2024.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String? // Isim girmemis olabilir
    var location: String? // location girmemis olabilir]
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
