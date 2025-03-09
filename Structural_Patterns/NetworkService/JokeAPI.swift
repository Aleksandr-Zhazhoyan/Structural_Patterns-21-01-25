//
//  JokeAPI.swift
//  Structural_Patterns
//
//  Created by Aleksandr Zhazhoyan on 09.03.2025.
//

import Foundation

class JokeAPI {
    func randomJoke(complition: @escaping (Result<Joke, Error>) -> Void) {
        guard let url = URL(string: "https://v2.jokeapi.dev/joke/Any") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                complition(.failure(error))
                return
            }
            guard let data = data else {
                return
            }
            do {
                let joke = try JSONDecoder().decode(Joke.self, from: data)
                complition(.success(joke))
            } catch {
                complition(.failure(error))
            }
        }
        task.resume()
    }
}
