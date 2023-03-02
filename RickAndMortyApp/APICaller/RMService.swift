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
    ///   - completion: CallBack with data or Error
    public func execute(request: RMRequest, completion: @escaping () -> Void? )
}
