//
//  String+App.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import Foundation
import UIKit

extension String {
    
  func cgFloatValue() -> CGFloat? {
    guard let doubleValue = Double(self) else {
      return nil
    }
    return CGFloat(doubleValue)
  }
    
}
