//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import Foundation

/// Primary API Service to get RIck and Morty API
final class RMService {
    
    /// Shared singleton instanses
    static let shared = RMService()
    
    /// private constractor
    private init() {}
    
    /// Send RickAndMorty API Request
    /// - Parameters:
    ///   - request: RMRequest
    ///   - expecting type:  the type of object that we are expecting  
    ///   - completion: CallBack with data or Error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error> ) -> Void?) {
    }
}
