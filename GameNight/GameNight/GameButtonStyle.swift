//
//  GameButtonStyle.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.
//

import SwiftUI

struct GameButtonStyle: ButtonStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .font(.title2)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.spring(), value: configuration.isPressed)
    }
}
