//
//  ConcentricCircle.swift
//  ConcentricCircleXcode12.4
//
//  Created by Nagaraj on 03/03/22.
//

import SwiftUI

struct ConcentricCircle: View {
    let dataSource: Array<CircleInput>
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            ForEach(dataSource, id: \.value) { input in
                ZStack(alignment: .top, content: {
                    Circle()
                        .fill(input.color)
                        .frame(width: input.value, height: input.value)
                    
                    Text(input.title)
                        .font(.caption)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                            .foregroundColor(.black)
                })
            }
        })
    }
}
