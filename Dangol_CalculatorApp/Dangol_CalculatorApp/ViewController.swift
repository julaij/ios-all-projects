//
//  ViewController.swift
//  Dangol_CalculatorApp
//
//  Created by Julai Dangol on 9/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Double?
    var operand: String?
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    //function to append number on the result outlet
    func appendNumberToLabel(_ number: String) {
           if let currentText = resultOutlet.text {
               resultOutlet.text = currentText + number
           } else {
               resultOutlet.text = number
           }
       }
    
    func passOperand(_ operandClicked: String) {
            if let labelText = resultOutlet.text,
                let number = Double(labelText) {
                firstNumber = number
                operand = operandClicked
                resultOutlet.text = ""
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        firstNumber = nil
            operand = nil
            resultOutlet.text = ""
    }

    @IBAction func buttonC(_ sender: UIButton) {
        if var currentText = resultOutlet.text, !currentText.isEmpty {
                currentText.removeLast()
                resultOutlet.text = currentText
            }
    }
    
    @IBAction func buttonPlusMinus(_ sender: UIButton) {
        
        if let currentText = resultOutlet.text,
                var currentNumber = Double(currentText) {
                currentNumber *= -1
                resultOutlet.text = "\(currentNumber)"
            }
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        passOperand("/")
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        appendNumberToLabel("7")
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        appendNumberToLabel("8")
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        appendNumberToLabel("9")
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
       passOperand("*")
        
    }
    @IBAction func buttonFour(_ sender: UIButton) {
        appendNumberToLabel("4")
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        appendNumberToLabel("5")
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        appendNumberToLabel("6")
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
       passOperand("-")
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        appendNumberToLabel("1")
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        appendNumberToLabel("2")
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        appendNumberToLabel("3")
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        passOperand("+")
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        appendNumberToLabel("0")
    }
    
    @IBAction func buttonDecimal(_ sender: UIButton) {
        appendNumberToLabel(".")
    }
    
    
    @IBAction func buttonPercent(_ sender: UIButton) {
        passOperand("%")
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        
        if let currentOperand = operand,
                    let currentText = resultOutlet.text,
                    let secondNumber = Double(currentText),
                    let first = firstNumber {
                    
                    var result: Double = 0.0
                    
                    switch currentOperand {
                    case "+":
                        result = first + secondNumber
                    case "-":
                        result = first - secondNumber
                    case "*":
                        result = first * secondNumber
                    case "/":
                        if secondNumber != 0 {
                            result = first / secondNumber
                        } else {
                            resultOutlet.text = "Not a number"
                            firstNumber = nil
                            operand = nil
                            return
                        }
                    case "%":
                        result = first * (secondNumber / 100.0)
                    default:
                        break
                    }
                    
                    let formatter = NumberFormatter()
                    formatter.minimumFractionDigits = 0
                    formatter.maximumFractionDigits = 5
                    
                    if let formattedResult = formatter.string(from: NSNumber(value: result)) {
                        resultOutlet.text = formattedResult
                    }
                    
                    firstNumber = nil
                    operand = nil
                } else {
                    resultOutlet.text = "Error"
                    firstNumber = nil
                    operand = nil
                }
            
        
    }
    
}
