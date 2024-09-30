//
//  ViewModel.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/5/24.
//

import Foundation
import SwiftUI
import Combine


class ProductsViewModel: ObservableObject {
    @Published var products : [ProductsModel] = []
    
    var cancellables: Set<AnyCancellable> = []
    
    func fetchInitialProducts() {
        fetchProducts()
            .receive(on: DispatchQueue.main)
            .replaceError(with: [])
//            .assign(to: &$products)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Success")
                case .failure(let error):
                    print("Error is \(error.localizedDescription)")
                }
            }) { data in
                print("data is \(data)")
                self.products = data
            }
            .store(in: &cancellables)
    }
}
