//
//  TimerView.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/12/24.
//

import SwiftUI
import Combine


struct TimerView: View {
    @StateObject private var viewModel = TimerViewModel()
    
    var body: some View {
        Text("\(viewModel.value)")
            .font(.largeTitle)
    }
}

#Preview {
    TimerView()
}
