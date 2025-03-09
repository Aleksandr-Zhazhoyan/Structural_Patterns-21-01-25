//
//  JokeList.swift
//  Structural_Patterns
//
//  Created by Aleksandr Zhazhoyan on 09.03.2025.
//

import Foundation

class JokeList {
    private var jokes: [JokeDecorator] = []
    
    func addJoke(_ joke: JokeDecorator) {
        jokes.append(joke)
    }
    
    func displayJokes() {
        for joke in jokes {
            print(joke.jokeString)
        }
    }
}
