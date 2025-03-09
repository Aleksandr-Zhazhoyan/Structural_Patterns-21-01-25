//
//  Joke.swift
//  Structural_Patterns
//
//  Created by Aleksandr Zhazhoyan on 09.03.2025.
//

import Foundation

struct Joke: Codable {
    let id: String
    let joke: String?
    let setup: String?
    let delivery: String?
    let category: String
}
