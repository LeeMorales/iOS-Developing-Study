//
//  Concentraction.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/9.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import Foundation

class Concentraction {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?{
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp {
                    if foundIndex == nil {
                        foundIndex = index
                    }else{
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            }else{
                //either no cards or 2 cards are face up
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    init(numberOfPairsOfCards: Int){
        for _ in 0...numberOfPairsOfCards {
            let card = Card()
            cards += [card,card]
        }
        
    }
}
