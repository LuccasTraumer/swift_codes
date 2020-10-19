//
//  EmojiMemoryGame.swift
//  memorized
//
//  Created by user182163 on 10/18/20.
//  Copyright © 2020 Lucas Jesus. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    
    private var model = EmojiMemoryGame.createdMemoryGame()
    
    
    
    var Cards: Array<MemoryGame<String>.Card> {
        model.cards;
    }
    
    static func createdMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { parIndex in
            return emojis[parIndex]
        }
        
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
