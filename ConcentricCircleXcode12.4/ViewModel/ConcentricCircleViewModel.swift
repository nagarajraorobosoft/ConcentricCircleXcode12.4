//
//  ConcentricCircleViewModel.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//


import Foundation
import SwiftUI

class ConcentricCircleInputViewModel: ObservableObject {
    @Published var color: Color = Color.white
    @Published var title: String = "Title"
    @Published var value: String = "0.0"
    
    var isValid: Bool {
        (value.cgFloatValue() ?? 0) > 0 // if any validation, can add here
    }
}
