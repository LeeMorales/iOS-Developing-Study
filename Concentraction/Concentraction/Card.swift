//
//  Card.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/9.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    var hashValue: Int {return identifier}
    
    static func == (lhs:Card, rhs:Card) -> Bool{
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
        
    init(){
        self.identifier = Card.getUniqueIdentifier()
        
    }
}
