//
//  GameView.swift
//  DiceGame
//
//  Created by Ivan Dedic on 2024-09-24.
//

import SwiftUI


struct GameView: View {
    
    @ObservedObject var myGameViewModel = DiceGameViewModel()

     
     var body: some View {
         
         ZStack {
             // Kolla RGB värderna / 255
             Color(red: 0.2, green: 0.4, blue: 0.3).ignoresSafeArea()
             
             VStack {
                 Text("Dice Game")
                 Spacer()
                 Text("Current Score \(myGameViewModel.gameModel.currentScore)")
                 
                 HStack {
                     
                     if (myGameViewModel.gameModel.diceOne == 0 || myGameViewModel.gameModel.diceTwo == 0) {
                         
                         Text("Start Game by pressing button below").font(.title2).padding(.vertical, 40)
                         
                     }
                     
                     else {
                         Image("dice-\(myGameViewModel.gameModel.diceTwo)")
                         Image("dice-\(myGameViewModel.gameModel.diceOne)")
                     }
                 }.padding(.bottom, 40)
                 
                 Button(action: {
                     myGameViewModel.rollDices()
                     
                     
                     
                     // print("Rolling dices!")
                 }, label: {
                     Text("Roll Dice").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).padding(40).cornerRadius(25).overlay(content: {
                         RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(.white, lineWidth: 3)
                     })
                 })
                 
                 Spacer()
             }
             
         }.sheet(isPresented: $myGameViewModel.winnerViewIsPresented, onDismiss: {
             //print("ModelView dismissed")
            
         }, content: {
             WinnerView(myGame: myGameViewModel)
         })
     
         
     }
    
}

