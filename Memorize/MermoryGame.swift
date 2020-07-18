//
//  MermoryGame.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 15.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//
//  Model

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return -1 // TODO: bogus!
    }
    
    init(numberOfPairsofCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsofCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(Content: content, id: pairIndex*2))
            cards.append(Card(Content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var Content: CardContent  //CardContent is a Don't Care Type
        var id: Int
    }
}
