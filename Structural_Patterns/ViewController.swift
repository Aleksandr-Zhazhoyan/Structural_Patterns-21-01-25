//
//  ViewController.swift
//  Structural_Patterns
//
//  Created by Aleksandr Zhazhoyan on 09.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let jokeApi = JokeAPI()
    private let jokeList = JokeList()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchJokes()
    }
    
    
    private func fetchJokes() {
        for _ in 0..<3 {
            jokeApi.randomJoke { [weak self] result in
                switch result {
                case .success(let joke):
                    let decoratorJoke = BasicJokeDecorator(joke: joke)
                    self?.jokeList.addJoke(decoratorJoke)
                    DispatchQueue.main.async {
                        self?.jokeList.displayJokes()
                    }
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
        }
    }


}
