//
//  ViewController.swift
//  DiscountAppMVC
//
//  Created by Julai Dangol on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var EnterAmtOL: UITextField!
    
    
    @IBOutlet weak var DiscRateOL: UITextField!
    
    var priceAfterDiscount = 0.0
    var imageName = ""
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func CalculateBtn(_ sender: Any) {
        
        
        //Read the amount from amountOl
        var amount = Double(EnterAmtOL.text!)
        
        // Read the Discount rate from DiscRateOL
        var discRate = Double(DiscRateOL.text!)
        priceAfterDiscount = amount! - (amount! * discRate!/100)
        
        if(discRate! > 0.0){
            imageName = "Discount"
        }
        else{
            imageName = "no-discount"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var transition = segue.identifier
        if transition == "ResultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.amount = EnterAmtOL.text!
            destination.discRate = DiscRateOL.text!
            
            destination.priceAfterDiscount = priceAfterDiscount
            destination.imagename = imageName
        }
        
    }
    


}

