//
//  TimerViewMdoel.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/12/24.
//

import Foundation
import Combine
import SwiftUI

class TimerViewModel: ObservableObject {
    @Published var value: Int = 0
    private var cancellable: AnyCancellable?
    
    
    init() {
        let publisher = Timer.publish(every: 1, on: .main, in: .default)
            .autoconnect()
            .map { _ in
                self.value + 1
            }
        cancellable = publisher.assign(to: \.value, on: self)
//        cancellable?.cancel()
    }
}





