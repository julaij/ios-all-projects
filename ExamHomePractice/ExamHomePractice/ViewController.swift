//
//  ViewController.swift
//  ExamHomePractice
//
//  Created by Julai Dangol on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceOL: UITextField!
    
    
    @IBOutlet weak var discountOL: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func calcBtnCL(_ sender: Any) {
        var price = Double(priceOL.text!)!
        var discountPercent = Double(discountOL.text!)!
        
        var discountAmount = Double(discountPercent)/100.0 * Double(price)
        
        
        var finalPrice = price - discountAmount
        resultDisplay.text = "\(finalPrice)"
    }
    
    
    @IBOutlet weak var resultDisplay: UILabel!
    
    
    
    
    
    


}

