//
//  ViewController.swift
//  Dangol_Exam01
//
//  Created by Julai Dangol on 10/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    // global variable
    var price: Double = 0.0
    
    
    @IBOutlet weak var enterNameOL: UITextField!
    
    
    @IBOutlet weak var roomTypeOL: UITextField!
    
    
    @IBOutlet weak var membershipOL: UITextField!
    
    
    
    @IBOutlet weak var resultLabelOL: UILabel!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func resetBtn(_ sender: Any) {
        roomTypeOL.text = ""
        resultLabelOL.text = ""
    }
    
    
    
    @IBAction func calcBtnPrice(_ sender: Any) {
        
        var name = enterNameOL.text!
        
        var roomType = roomTypeOL.text!
        
        var taxRate = 16.75
        var discountRate = 5
        
        
        var membership = "Yes"
        
        var singlBedPrice = 74.99;
        var doblBedPrice = 84.99;
        
        if roomType == "Single-Bed room"{
            if membership == "yes"{
                
                var discountAmount = Double(discountRate)/100.0 * Double(price)
            }
            if membership == "No"{
                var amount = singlBedPrice
                
                var tax = taxRate/100.0 * price
                
                
            }
            }
            
            }
        else if roomType == "Double-Bed room"{
            if membership == "Yes"{
                var discountAmount = Double(discountRate)/100.0 * Double(price)
               
            }
            if membership == "No"
        }
        else{
                    resultLabelOL.text = "No room is available with your preference"
            
        }
            
         discountAmount = Double(discountRate)/100.0 * Double(price)
        
         discountedPrice = roomTypePrice
            
         taxAmount = Double(taxRate)/100.0 * price
        
        
        
        
            
        imageViewOL.image = UIImage(named: "exam1Image")
        
        
        
        
        
        
        
        
        
        
        
        
        }
        
         
        
        
        
        
        
        
        
        
        
        
        
        
    
        
        
        }
    
    

        
        
        
        
        
        
        

        
        
    

