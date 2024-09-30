//
//  Model.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/4/24.
//

import Foundation

// MARK: - WelcomeElement
struct ProductsModel: Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: Category
    let image: String
    let rating: Rating
}

enum Category: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}

// MARK: - Rating
struct Rating: Codable {
    let rate: Double
    let count: Int
}

typealias Products = [ProductsModel]
