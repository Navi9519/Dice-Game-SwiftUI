//
//  WinnersView.swift
//  DiceGame
//
//  Created by Ivan Dedic on 2024-09-24.
//

import SwiftUI

struct WinnerView: View {
    
    @ObservedObject var myGame: DiceGameViewModel 
    
    var body: some View {
        Text("CONGRATULATIONS! YOU HAVE WON")
        Text("Yor score was! \(myGame.gameModel.currentScore)")
        
        Button(action: {
            print("ta bort ett poäng")
            myGame.gameModel.currentScore -= 1
            
        }, label: {
            Text("Fuska ta bort poäng")
        })
    }
    
}  
