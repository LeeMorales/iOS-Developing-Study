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
    @IBAction func appendDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber{
        Display.text = Display.text! + digit
        }else{
            Display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    
}
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle
        if userIsInTheMiddleOfTypingANumber {
            enter()
        }
        switch operation {
        case "✖️":performOperation(operation: multiply)
        case "➗":performOperation(operation: divide)
        case "➕":performOperation(operation: plus)
        case "➖":performOperation(operation: minus)
        default: break
        }
    }
    func performOperation(operation:(Double, Double) -> Double){
        if operandStack.count >= 2 {
            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
            enter()
        }
    }
    func multiply(op1: Double, op2: Double) -> Double{
        return op1 * op2
    }
    func divide(op1: Double, op2: Double) -> Double{
        return op1 / op2
    }
    func plus(op1: Double, op2: Double) -> Double{
        return op1 + op2
    }
    func minus(op1: Double, op2: Double) -> Double{
        return op1 - op2
    }
    
    var operandStack = Array<Double>()
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        print("operandStack = \(operandStack)")
    }
    var displayValue: Double{
        get{
            return NumberFormatter().number(from: Display.text!)!.doubleValue
        }
        set{
            Display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
}
