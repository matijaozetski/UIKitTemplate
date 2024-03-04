//
//  NetworkManager.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import Foundation
import Alamofire

// Repositories: Use the NetworkManager to fetch data required by the application. Repositories act as a mediator between the network layer and the view models/services.
// Services: These can include higher-level operations that involve networking. Services might use the NetworkManager for specific tasks, like fetching data from an API, and then process this data.
// Models: Define your data models here. These models are what your network requests will decode from the JSON responses.
class NetworkManager {
    
    static let shared = NetworkManager()
    private let baseURL = "https://api.example.com"
    
    private init() {
        
    }
    
    // MARK: - Public Methods
    
    // Generic function to handle all types of requests
    func request<T: Decodable>(_ urlConvertible: URLRequestConvertible, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(urlConvertible)
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let value):
                    completion(.success(value))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    // Example of a simple GET request
    func fetchData<T: Decodable>(endpoint: String, parameters: Parameters? = nil, completion: @escaping (Result<T, Error>) -> Void) {
        let url = "\(baseURL)/\(endpoint)"
        AF.request(url, parameters: parameters)
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let value):
                    completion(.success(value))
                case .failure(let error):
                    completion(.failure(error as Error))
                }
            }
    }
    
    // Add more specific methods as needed (e.g., for POST, PUT, DELETE requests)
}
