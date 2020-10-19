//
//  MemoryGame.swift
//  memorized
//
//  Created by user182163 on 10/18/20.
//  Copyright © 2020 Lucas Jesus. All rights reserved.
//

import Foundation

struct MemoryGame<Element> {
    
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("Escolheu a carta \(card)")
    }
    
    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        var content: Element
        var id: Int
    }
    
    
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> Element) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
}
