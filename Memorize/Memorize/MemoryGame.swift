//
//  MemoryGame.swift
//  Memorize
//
//  Created by Miles on 2020/5/30.
//  Copyright © 2020 成都祥琳机电设备有限公司. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>
{
  var cards: Array<Card>
  
  func choose(card: Card)
  {
    print("card choesn: \(card)")
  }
  
  init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent)
  {
    cards = Array<Card>()
    for pairIndex in 0..<numberOfPairsOfCards
    {
      let content = cardContentFactory(pairIndex)
      cards.append(Card(content: content, id: pairIndex*2))
      cards.append(Card(content: content, id: pairIndex*2+1))
    }
  }
  
  struct Card: Identifiable
  {
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: CardContent
    var id: Int
  }
}
