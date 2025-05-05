//
//  LighterScreen.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.
//
import SwiftUI

struct LighterScreen: View {
    let okayQuestions = [
        
    ]
    
    let extremeQuestions = [
            
    ]
    
    @State private var currentQuestionIndex = 0
    @State private var isExtremeSelected: Bool? = nil
    @State private var isGameSelected = false
    @State private var shuffledQuestions: [String] = []
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    var body: some View {
        ZStack {
            Image("background copy 4") 
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Lighter Game")
                    .font(.system(size: 28))
                    .foregroundColor(.pink)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .shadow(color: .white.opacity(0.7), radius: 11)
                
                if !isGameSelected {
                    Button(action: {
                        isGameSelected = true
                    }) {
                        Text("Start Game")
                            .font(.title2)
                            .foregroundColor(.orange)
                            .padding()
                            
                    }
                } else if isExtremeSelected == nil {
                    VStack {
                        Button(action: {
                            selectGame(isExtreme: false)
                        }) {
                            Text("Standard")
                                .font(.title2)
                                .foregroundColor(.blue)
                                .padding()
                                
                        }
                        Button(action: {
                            selectGame(isExtreme: true)
                        }) {
                            Text("Extreme")
                                .font(.title2)
                                .foregroundColor(.red)
                                .padding()
                                
                        }
                    }
                } else {
                    VStack {
                        ScrollView {
                            Text(shuffledQuestions[currentQuestionIndex])
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(maxWidth: 300)
                                .minimumScaleFactor(0.7)
                                .lineLimit(4)
                        }
                        .frame(height: 200) // Controls max text height
                        .padding(.vertical, 20)
                        
                        HStack {
                            Button(action: nextQuestion) {
                                Text("Next Question")
                                    .font(.title2)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                            }
                            Button(action: skipQuestion) {
                                Text("Skip Question")
                                    .font(.title2)
                                    .foregroundColor(.pink)
                                    .padding()
                            }
                        }
                    }
                }
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }

    private func selectGame(isExtreme: Bool) {
        isExtremeSelected = isExtreme
        currentQuestionIndex = 0
        shuffledQuestions = shuffleQuestions(questions: isExtreme ? extremeQuestions : okayQuestions)
    }
    
    private func shuffleQuestions(questions: [String]) -> [String] {
        return questions.shuffled()
    }

    private func nextQuestion() {
        if currentQuestionIndex < shuffledQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            showAlertWith(title: "End of questions", message: "You've reached the end of the questions.")
            currentQuestionIndex = 0
        }
    }

    private func skipQuestion() {
        let randomSips = Int.random(in: 1...4)
        showAlertWith(title: "Skip Question", message: "You have to drink \(randomSips) sips!")
    }

    private func showAlertWith(title: String, message: String) {
        alertTitle = title
        alertMessage = message
        showAlert = true
    }
}

struct LighterGameView_Previews: PreviewProvider {
    static var previews: some View {
        LighterScreen()
    }
}
