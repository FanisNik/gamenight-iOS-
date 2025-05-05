//
//  GameNightApp.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.

import SwiftUI

@main
struct GameNightApp: App {
    @State private var isLoading = true

    var body: some Scene {
        WindowGroup {
            if isLoading {
                SplashScreen(onFinish: { isLoading = false })
            } else {
                NavigationView {
                    HomeScreen() 
                }
                .background(
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                )
            }
        }
    }
}
