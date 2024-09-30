//
//  Code.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/3/24.
//

import Foundation
import Combine

var jsonDecoder : JSONDecoder = {
    let jsonDecoder = JSONDecoder()
    return jsonDecoder
    
}()

func fetchProducts() -> AnyPublisher<[ProductsModel], Error> {
    
    let url = URL(string: "https://fakestoreapi.com/products")!
    
    let publisher = URLSession
        .shared
        .dataTaskPublisher(for: url)
        .map(\.data)
        .decode(type: [ProductsModel].self, decoder: jsonDecoder)
        .eraseToAnyPublisher()
    
    return publisher
    
}

