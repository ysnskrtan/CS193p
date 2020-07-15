//
//  ContentView.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 15.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
    //    VStack {
      //      ForEach(0..<4) { index in
                HStack {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card).onTapGesture {
                            self.viewModel.choose(card: card)
                        }
                    }
                }
          //  }
        //}
            .foregroundColor(Color.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.Content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
