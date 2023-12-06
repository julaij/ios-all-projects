//
//  ViewController.swift
//  Exam1111PRMor
//
//  Created by Julai Dangol on 10/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    //global variable
    var Price: Double = 0.0
    
    
    @IBOutlet weak var itemNameOL: UITextField!
    
            
    @IBOutlet weak var priceOL: UITextField!
    
    
    @IBOutlet weak var taxPercentOL: UITextField!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    
    @IBOutlet weak var resultDisplayOL: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calcBtnClicked(_ sender: Any) {
        var itemName = itemNameOL.text!
        
        
        if itemName == "Samsung"{
            Price = 800.0
        }
        else if itemName == "Iphone"{
            Price = 1200.0
        }
        else if itemName == "MacBook"{
            Price = 2500.0
        }
        else{
        }
        resultDisplayOL.text = "Item not found"
    
        
    
        var taxPercent = Double(taxPercentOL.text!)!
        var taxAmount = Double(taxPercent)/100.0 * Double(Price)
        
        var totalPrice = Price + taxAmount
        
        //Display the result
        
        resultDisplayOL.text = "Total Price after tax is \(totalPrice)"
        
        imageViewOL.image = UIImage(named: "LaallP")
        
        
        
        
        }
    
    }
    
    



