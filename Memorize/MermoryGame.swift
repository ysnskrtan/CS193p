//
//  MermoryGame.swift
//  Memorize
//
//  Created by Yasin Şükrü Tan on 15.07.2020.
//  Copyright © 2020 Yasin Şükrü Tan. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
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
