//
//  TruthOrDareScreen.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.
//

import SwiftUI

struct TruthOrDareScreen: View {
    let okayTruthQuestions = [
            "Who do you think tells the funniest jokes?",
          "Who do you think has the weirdest habit?",
          "Who do you think has the nicest smile?"
    ]
    
    let okayDareQuestions = [
            "Do 10 jumping jacks.",
           "Sing a line from your favorite song.",
           "Post a silly selfie in the group chat."
    ]
    
    let extremeTruthQuestions = [
            "Who do you think has the wildest love life?",
           "Who do you think has done the most rebellious thing?",
           "Who do you think would break the rules first in a game?"
    ]
    
    let extremeDareQuestions = [
            "Eat something very spicy.",
           "Call someone and confess a funny secret.",
           "Let someone draw on your face with a marker."

    ]
    
    @State private var currentQuestionIndex = 0
    @State private var isExtremeSelected: Bool? = nil
    @State private var isGameSelected = false
    @State private var isTruthSelected: Bool? = nil
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
                Text("Truth or Dare")
                    .font(.system(size: 28))
                    .foregroundColor(.purple)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .shadow(color: .white.opacity(0.7), radius: 11)
                
                if !isGameSelected {
                    Button(action: {
                        isGameSelected = true
                    }) {
                        Text("Start Game")
                            .font(.title2)
                            .foregroundColor(.pink)
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
                } else if isTruthSelected == nil {
                    VStack {
                        Button(action: {
                            selectTruthOrDare(isTruth: true)
                        }) {
                            Text("Truth")
                                .font(.title2)
                                .foregroundColor(.blue)
                                .padding()
                        }
                        Button(action: {
                            selectTruthOrDare(isTruth: false)
                        }) {
                            Text("Dare")
                                .font(.title2)
                                .foregroundColor(.pink)
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
                        .frame(height: 200)
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
        isTruthSelected = nil
    }
    
    private func selectTruthOrDare(isTruth: Bool) {
        isTruthSelected = isTruth
        currentQuestionIndex = 0
        shuffledQuestions = shuffleQuestions(questions: getQuestionArray())
    }
    
    private func getQuestionArray() -> [String] {
        if let isExtreme = isExtremeSelected, let isTruth = isTruthSelected {
            return isExtreme ? (isTruth ? extremeTruthQuestions : extremeDareQuestions) : (isTruth ? okayTruthQuestions : okayDareQuestions)
        }
        return []
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

struct TruthOrDareScreen_Previews: PreviewProvider {
    static var previews: some View {
        TruthOrDareScreen()
    }
}
