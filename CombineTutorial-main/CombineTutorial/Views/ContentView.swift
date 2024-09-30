//
//  ContentView.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ProductsViewModel()
    
    var body: some View {
        VStack {
            Button(action: {
                print("fetching products")
                viewModel.fetchInitialProducts()
                print(viewModel.products)
            }, label: {
                Text("Products")
            })
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}




#Preview {
    ContentView()
}
