//
//  Concentraction.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/5.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import Foundation

class Concentraction{
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        if cards[index].isFaceup {
            cards[index].isFaceup = false
        }else{
            cards[index].isFaceup = true
        }
        }
    
    init (numberOfPairsOfCards: Int) {
        for _ in 0...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }

}
