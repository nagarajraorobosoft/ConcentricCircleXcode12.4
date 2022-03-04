//
//  CircleInput.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import Foundation
import SwiftUI

struct CircleInput {
    let title: String
    let value: CGFloat // radius
    let color: Color
}

extension CircleInput: Comparable {
    static func <(lhs: CircleInput, rhs: CircleInput) -> Bool {
        lhs.value < rhs.value
    }
}
