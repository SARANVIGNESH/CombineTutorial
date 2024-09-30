//
//  CombineTutorialApp.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/3/24.
//

import SwiftUI
import Combine

@main
struct CombineTutorialApp: App {
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
            .sink { _ in
                let currentOrientation = UIDevice.current.orientation
                print(currentOrientation)
            }
            .store(in: &cancellables)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
