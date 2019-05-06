//
//  Card.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/5.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import Foundation

struct Card {
    var isFaceup = false
    var isMatched = false
    var identifier:Int
    
    static var identifierFactory = 0
    static func getUniqueidentifier() -> Int{
        Card.identifierFactory += 1
        return 0
    }
        
        
    init() {
        self.identifier = Card.getUniqueidentifier()
    }
}
