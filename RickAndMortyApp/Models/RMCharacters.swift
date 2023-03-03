//
//  RMCharacters.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import Foundation
struct Character: Codable {
    let id: Int
    let name, species, type: String
    let status: CharacterStatus
    let gender: CharacterGender
    let origin, location: SingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum CharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}

enum CharacterGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}

// MARK: - Location
struct SingleLocation: Codable {
    let name: String
    let url: String
}
