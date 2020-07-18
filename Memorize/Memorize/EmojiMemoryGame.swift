//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 15.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//
//  ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐭", "🐹", "🐰"]
        return MemoryGame<String>(numberOfPairsofCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        // objectWillChange.send() instead of writing this
        // when write @Published wrapper to model declaration its done
        model.choose(card: card)
    }
}
