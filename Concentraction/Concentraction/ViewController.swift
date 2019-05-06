//
//  ViewController.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/3.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var game = Concentraction(numberOfPairsOfCards: (cardButtons.count+1) / 2)
    
    var flipCount = 0 { didSet { flipCountLabel.text = "Flips: \(flipCount)" } }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻","♠️","♣️","♥️","♦️","😇","🥶","👽","📱","💻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
            flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of:sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }else{
            print("Choosen card was not in the cardbutton")
        }
                }
    func updateViewFromModel(){
        for index in cardButtons.indices{
            let button  = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceup {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }else{
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.6216369271, blue: 0.4910389185, alpha: 0) : #colorLiteral(red: 1, green: 0.6216369271, blue: 0.4910389185, alpha: 1)
            }
        }
    }

    
    var emoji = [Int: String]()
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] != nil, emojiChoices.count > 0 {
                let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
                emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        return emoji[card.identifier] ?? "?"
    }
}



