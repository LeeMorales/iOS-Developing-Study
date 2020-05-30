//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Miles on 2020/5/30.
//  Copyright © 2020 成都祥琳机电设备有限公司. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame
{
  private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
  
  static func createMemoryGame() -> MemoryGame<String>
  {
    let emojis: Array<String> = ["👻","🎃", "🤺"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count)
    {
      pairIndex in return emojis[pairIndex]
    }
  }
  
 
  
  //MARK: - Access to the Model
  var cards: Array<MemoryGame<String>.Card>
  {
    model.cards
  }
  
  //MARK: - Intents
  func chooseCard(card: MemoryGame<String>.Card)
  {
    model.choose(card: card)
  }
}
