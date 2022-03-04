//
//  ConcentricCircleXcode12_4App.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import SwiftUI

@main
struct ConcentricCircleXcode12_4App: App {
    @ObservedObject var viewModel1 = ConcentricCircleInputViewModel()
    @ObservedObject var viewModel2 = ConcentricCircleInputViewModel()
    @ObservedObject var viewModel3 = ConcentricCircleInputViewModel()

    var body: some Scene {
        WindowGroup {
            VStack {
                ContentView(viewModel1: viewModel1, viewModel2: viewModel2, viewModel3: viewModel3)
            }
        }
    }
}
