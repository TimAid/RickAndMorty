//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import Foundation
enum RMServiceError: Error {
    case failedToCreateRequest
    case failedToCreateTask
}
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
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error> ) -> Void) {
        guard let urlRequest = self.request(from: request) else { return
            completion(.failure(RMServiceError.failedToCreateRequest))
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToCreateTask))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(type.self, from: data)
                completion(.success(json))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume() 
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let urlString = rmRequest.url else { return nil }
        var request = URLRequest(url: urlString)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
