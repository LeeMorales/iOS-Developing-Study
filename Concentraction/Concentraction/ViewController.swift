//
//  ViewController.swift
//  Concentraction
//
//  Created by Lee Morales on 2019/5/3.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices:Array<String> = ["🎃","👻","🎃","👻","♠️","♣️","♥️","♦️","😇","🥶","👽","📱","💻","♠️","♣️","👻","♥️","♦️","😇","🥶","👽","📱","🎃","💻","♦️"]
    
    @IBAction func touchCard(_ sender: UIButton) {
            flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of:sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }else{
            print("Choosen card was not in the cardbutton")
        }
    }
   
    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6216369271, blue: 0.4910389185, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        }
    }
}

