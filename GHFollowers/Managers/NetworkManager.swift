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
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping(Result<[Follower], GFError>) -> Void) { // Ya Array of followers gelecek ya da error mesage dondurecek
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
        
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { // response varsa ve kodu da 200'se her sey OK, devam
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else { // data varsa sikinti yok devam
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase // converter
                let followers = try decoder.decode([Follower].self, from: data) // decode that data into a type of an array of followers.
                completed(.success(followers))// no error message
            } catch {
                    completed(.failure(.invalidData))
            }
        }
        
        task.resume() // do not forget!
    }
}
