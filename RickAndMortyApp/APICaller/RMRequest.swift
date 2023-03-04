//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import Foundation

/// Object that represend a single API call
final class RMRequest {
     
    //MARK: - Base Url
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    //MARK: - Endpoint
    private let endpoint: RMEndpoint
    
    //MARK: - Path Component
    ///https://rickandmortyapi.com/api/character  
    private let pathComponent: [String]
     
    //MARK: Query filter parameter
    ///name=rick&status=alive
    private let queryParameters: [URLQueryItem]
    
    public init(endpoint: RMEndpoint, pathComponent: [  String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty {
            pathComponent.forEach ({
                string += "/\($0)"
            })
        }

        if !queryParameters.isEmpty {
             string += "?"
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
      
    public let httpMethod = "GET"
    
    public var url: URL? {
        return URL(string: urlString)
    }
}

extension RMRequest {
    static let listCharacterRequest = RMRequest(endpoint: .character)
}
