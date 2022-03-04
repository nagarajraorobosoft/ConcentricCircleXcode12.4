//
//  Sequence+App.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import Foundation

extension Sequence {
    
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        sorted { a, b in
            a[keyPath: keyPath] > b[keyPath: keyPath] // ascending
        }
    }
    
}

