//
//  ViewController.swift
//  Exam12Pr
//
//  Created by Julai Dangol on 10/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var typeOL: UITextField!
    
    
    @IBOutlet weak var priceOL: UITextField!
    
    
    @IBOutlet weak var discountOL: UITextField!
    
    
    @IBOutlet weak var taxOL: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var resultOL: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    

    @IBAction func btnClicked(_ sender: Any) {
        
        var price = Double(priceOL.text!)!
        var discountPercent = Double(discountOL.text!)!
       var discountAmount = Double(discountPercent)/100.0 * Double(price)
        
        
        var taxPercent = Double(taxOL.text!)!
        
        var taxAmount = Double(price - discountAmount + taxPercent)
        
        var finalValue = 
        
        resultOL.text =
        
        imageView.image = UIImage(named:"LaallP")
    }
}

