//
//  Card.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/9.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
        
    init(){
        self.identifier = Card.getUniqueIdentifier()
        
    }
}
