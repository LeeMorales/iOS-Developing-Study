//
//  ViewController.swift
//  Calculator
//
//  Created by Lee Morales on 2019/5/2.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var Display: UILabel!
    var userIsInTheMiddleOfTypingANumber:Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber{
            Display.text = Display.text! + digit
        }else{
            Display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
}
