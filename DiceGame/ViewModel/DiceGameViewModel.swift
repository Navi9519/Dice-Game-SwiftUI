//
//  DiceGameViewModel.swift
//  DiceGame
//
//  Created by Ivan Dedic on 2024-09-24.
//

import Foundation


class DiceGameViewModel: ObservableObject {
    
    @Published var gameModel = DiceGameModel()
    @Published var winnerViewIsPresented = false
    
    func rollDices() {
        
        
        gameModel.diceOne = Int.random(in: 1...6)
        gameModel.diceTwo = Int.random(in: 1...6)
        
        updateScore()
        
        if gameModel.currentScore >= 21 {
           // print("You have won!!!")
           winnerViewIsPresented = true
          
        }
    }
    
    
    func resetGame() {
        
        gameModel.currentScore = 0
        gameModel.diceOne = 0
        gameModel.diceTwo = 0
        
        
    }
    
    func updateScore() {
        
        gameModel.currentScore += gameModel.diceOne + gameModel.diceTwo
        
    }
    
}
