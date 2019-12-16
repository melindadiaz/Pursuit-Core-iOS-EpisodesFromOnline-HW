//
//  AppError.swift
//  Pursuit-Core-iOS-Episodes-from-Online
//
//  Created by Melinda Diaz on 12/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badURL(String) //this is an associated value it captures a value along side the case. to store any relevant data
    case noResponse
    case networkClientError(Error)
    case noData
    case decodingError(Error)
    case badStatusCode(Int) //bad status codes 484, 500 etc
    case badMimeType(String)// Mime is multimedia type video, image/jpeg etc
}
