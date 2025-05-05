//
//  SplashScreen.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.
//

import SwiftUI

struct SplashScreen: View {
    var onFinish: () -> Void
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            Image("splash")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                onFinish()
            }
        }
    }
}
