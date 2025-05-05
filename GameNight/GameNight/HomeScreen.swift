//
//  HomeScreen.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.
//

import SwiftUI

struct HomeScreen: View {
    @State private var isNavigating = false
    
    var body: some View {
        ZStack {
            Image("background copy 4")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Text("Choose Your Game")
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                    .shadow(color: Color.white.opacity(0.7), radius: 11)

                VStack(spacing: 10) {
                    
                    NavigationLink(destination: LighterScreen() ) {
                        Text("Lighter")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.orange)
                        
                    }

                    NavigationLink(destination: TruthOrDareScreen()) {
                        Text("Truth or Dare")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.orange)
                            
                    }

                    NavigationLink(destination: NeverHaveIEverScreen()) {
                        Text("Never Have I Ever")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.orange)
                            
                    }
                }
                .padding(.horizontal, 40)
            }
        }
    }
}


