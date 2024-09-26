//
//  ContentView.swift
//  DiceGame
//
//  Created by Ivan Dedic on 2024-09-24.
//

import SwiftUI





struct ContentView: View {
    
    @ObservedObject var myGameViewModel = DiceGameViewModel()
    
    var body: some View {
        
       GameView(myGameViewModel: myGameViewModel)
    }
    
}


#Preview {
    ContentView()
}
