//
//  ContentView.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel1: ConcentricCircleInputViewModel
    @ObservedObject var viewModel2: ConcentricCircleInputViewModel
    @ObservedObject var viewModel3: ConcentricCircleInputViewModel
    
    @State var tag:Int? = nil
    
    var circleInput: [CircleInput] {
        let dataSource = [viewModel1, viewModel2, viewModel3].map { CircleInput(title: $0.title, value: $0.value.cgFloatValue() ?? 0, color: $0.color) }
        
        return ContentViewModel(dataSource: dataSource).valuesAdjustedToWidth
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0, content: {
                    ScrollView {
                        ConcentricCircleInputView(viewModel: viewModel1)
                        ConcentricCircleInputView(viewModel: viewModel2)
                        ConcentricCircleInputView(viewModel: viewModel3)
                    }
                    NavigationLink(destination: ConcentricCircle(dataSource: circleInput), tag: 1, selection: $tag) {
                        Button("Continue") {
                            tag = 1
                        }
                        .disabled(!(viewModel1.isValid&&viewModel2.isValid&&viewModel3.isValid))
                    }            })
            
        }
    }
}
