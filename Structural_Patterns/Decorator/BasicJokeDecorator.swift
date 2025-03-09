//
//  BasicJokeDecorator.swift
//  Structural_Patterns
//
//  Created by Aleksandr Zhazhoyan on 09.03.2025.
//

import Foundation

class BasicJokeDecorator: JokeDecorator {
    
    private let joke: Joke
    
    var jokeString: String {
        if let jokeText = joke.joke {
            return jokeText
        } else if let setup = joke.setup, let delivery = joke.delivery {
            return "\(setup) - \(delivery)"
        }
        return "Not joke"
    }
    
    init(joke: Joke) {
        self.joke = joke
    }
    
    
}
