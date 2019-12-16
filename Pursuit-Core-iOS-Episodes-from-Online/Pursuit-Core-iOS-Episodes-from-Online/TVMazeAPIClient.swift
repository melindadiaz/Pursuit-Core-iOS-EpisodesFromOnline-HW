//
//  TVMazeAPIClient.swift
//  Pursuit-Core-iOS-Episodes-from-Online
//
//  Created by Melinda Diaz on 12/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation

class TVMazeAPIClient {
   //this static constant and private image makes a singleton
   static let manager = TVMazeAPIClient()
    
    private init() {}
    
    func getShows(urlString: String, completion: @escaping (Result<TVShow,AppError>) -> ()) {
        
        NetworkHelper.shared.performDataTask(with: urlString) { (result) in
            switch result {
            case .failure(let error):
                completion(.failure(.networkClientError(error)))
            case .success(let data):
                do {
                    let searches = try JSONDecoder().decode(TVShow.self, from: data)
                    completion(.success(searches))
                } catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
    }
}
