//
//  RMGetCharacterResponse.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 04.03.2023.
//

import Foundation

struct RMGetCharactersResponse: Codable {
    
    let info: Info
    let results: [RMCharacter]
    struct Info: Codable  {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
}
