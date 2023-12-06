//
//  ViewController.swift
//  Dangol_Exam02
//
//  Created by Julai Dangol on 11/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var loanTypeOL: UITextField!
    
    
    @IBOutlet weak var loanAmountOL: UITextField!
    
    
    
    
    @IBOutlet weak var interestRateOL: UITextField!
    
    
    
    
    @IBOutlet weak var termOL: UITextField!
    
    
    var loanTypeInput = ""
    var loanAmountInput = 0.0
    var interestRateInput = 0.0
    var termInput = 0.0
    var totalMonths = 0.0
    var monthlyInterestRate = 0.0
    var monthlyEMIPayment = 0.0
    var loanTypeImageView = ""
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func calcEMIBTN(_ sender: UIButton) {
        
        
        
         loanTypeInput = loanTypeOL.text!
         loanAmountInput = Double(loanAmountOL.text!)!
         interestRateInput = Double(interestRateOL.text!)!
        termInput = Double(termOL.text!)!
        
        
       var loanType = loanTypeInput
        var term = String(termInput)
        totalMonths = termInput * 12
        
        
        monthlyInterestRate = (Double(interestRateInput)!) / 12 / 100
        
        monthlyEMIPayment = (Double(loanAmountInput)!) * (monthlyInterestRate * pow(1 + monthlyInterestRate, totalMonths)) / (pow(1 + monthlyInterestRate, totalMonths) - 1)
        
        
        
        
    }
    
    
    
    @IBAction func resetBTN(_ sender: UIButton) {
                loanTypeOL.text = ""
                loanAmountOL.text = ""
                interestRateOL.text = ""
                termOL.text = ""
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            
                    let destination = segue.destination as! ResultViewController

                    
                    destination.loanType = loanType
                    destination.enteredLoanAmount = Double(loanAmountOL.text!)!
                    destination.enteredInterestRate = Double(interestRateOL.text!)!
            destination.calculatedEMI = Double(format: "%.2f", monthlyEMIPayment)!
                }
            
        }
    }
    


