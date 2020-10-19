//
//  ContentView.swift
//  memorized
//
//  Created by user182163 on 10/11/20.
//  Copyright © 2020 Lucas Jesus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            ForEach(self.viewModel.Cards) { cardX in
                HStack {
                    ForEach(self.viewModel.Cards) { card in
                        CardView(card: card).onTapGesture {
                            self.viewModel.choose(card: card)
                        }
                    }
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white);
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3);
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: 10.0).fill();
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
