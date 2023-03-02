//
//  RMEndpoint.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import Foundation

/// Represent unique API endpoind. To get API info
@frozen enum EndPoint: String {
    case character
    case location
    case episodes
}
