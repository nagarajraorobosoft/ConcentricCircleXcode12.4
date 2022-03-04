//
//  ContentViewModel.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import Foundation
import UIKit

struct ContentViewModel {
    let dataSource: [CircleInput]
    
    private var sortedDataSource: [CircleInput] {
        dataSource.sorted(by: \.value)
    }
    
    var valuesAdjustedToWidth: [CircleInput] {
        let maxValue = sortedDataSource.max()
        let maxWidth: CGFloat = Screen.width

        let scale = maxWidth / (maxValue?.value ?? 0)
        let scaleToFit = sortedDataSource.map { CircleInput(title: $0.title, value: $0.value*scale, color: $0.color) }
        return scaleToFit
    }
}
