//
//  ViewController.swift
//  DangolAssignment2
//
//  Created by Julai Dangol on 9/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        
        let name = nameOutlet.text ?? ""
        let billText = billAmountOutlet.text
        let tipText = tipPercentageOutlet.text
        
        let billAmount = (Double(billText ?? "0.0") ?? 0.0)
        let tipPercentage = (Double(tipText ?? "0.0") ?? 0.0)
        
        let tipAmount = billAmount * (tipPercentage/100)
        let totalAmount = billAmount + tipAmount
        
        nameLabel.text = "Name: \(name)"
        billAmountLabel.text = "Bill Amount: $\(billAmount)"
        tipAmountLabel.text = "Tip Amount: $\(tipAmount)"
        totalAmountLabel.text = "Total Amount: $\(totalAmount)"
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        nameOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        nameLabel.text = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
        
    }
    
    
}

