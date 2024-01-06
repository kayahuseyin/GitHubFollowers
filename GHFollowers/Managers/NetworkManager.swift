//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 6.01.2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, ErrorMessage?) -> Void) { // Ya Array of followers gelecek ya da error mesage dondurecek
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, .invalidUsername)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
        
            if let _ = error {
                completed(nil, .unableToComplete)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { // response varsa ve kodu da 200'se her sey OK, devam
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else { // data varsa sikinti yok devam
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase // converter
                let followers = try decoder.decode([Follower].self, from: data) // decode that data into a type of an array of followers.
                completed(followers, nil) // no error message
            } catch {
                completed(nil, .invalidData)
            }
        }
        
        task.resume() // do not forget!
    }
}
