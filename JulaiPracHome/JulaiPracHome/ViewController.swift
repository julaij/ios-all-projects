//
//  ViewController.swift
//  JulaiPracHome
//
//  Created by Julai Dangol on 11/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterAmountOL: UITextField!
    
    
    @IBOutlet weak var enterDiscountRate: UITextField!
    
    var amount = 0.0
    var discountRate = 0.0
    var priceAfterDiscount = 0.0
    var image = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func calcBTN(_ sender: UIButton) {
        
        amount = Double (enterAmountOL.text!)!
        discountRate = Double (enterDiscountRate.text!)!
        
        priceAfterDiscount = amount - (amount * discountRate/100)
        
        if(discountRate > 0.0){
            image = "Discount"
        }
        else {
            image = "NO-Discount"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.amount = amount
            destination.discountRate = discountRate
            destination.priceAfterDiscount = priceAfterDiscount
            destination.image = image
        }
    }
    
}
