//
//  RMLocations.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import Foundation
struct Location: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
