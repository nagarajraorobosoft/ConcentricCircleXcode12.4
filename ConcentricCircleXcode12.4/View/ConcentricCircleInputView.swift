//
//  ConcentricCircleInputView.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import Foundation
import SwiftUI

struct ConcentricCircleInputView: View {
    @ObservedObject var viewModel: ConcentricCircleInputViewModel

    var body: some View {
        VStack(spacing: 0, content: {
                ColorPicker("Color", selection: $viewModel.color)
                TextField("", text:  $viewModel.value)
                    .keyboardType(.numberPad)
                TextField("", text:  $viewModel.title)
                    .keyboardType(.alphabet)
                    .disableAutocorrection(true)
                Spacer()
        }).padding()
    }
}

