//
//  ViewController.swift
//  DiscountPrice
//
//  Created by Julai Dangol on 9/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL1: UITextField!
    
    
    @IBOutlet weak var inputOL2: UITextField!
    
    @IBOutlet weak var Result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnClicked(_ sender: UIButton) {
        
        func calculate(amount: Double, discount: Double)-> Double{
            var result = amount-((amount*discount)/100)
            
            return result
        }
        
        var in1:Double = Double(inputOL1.text!)!
        var in2:Double = Double(inputOL2.text!)!
        
        //var result = in1*(in2/100)
        
       var price = calculate(amount: in1 ,discount: in2)
        Result.text = "The price after discount is \(price)"
    }
   
}

