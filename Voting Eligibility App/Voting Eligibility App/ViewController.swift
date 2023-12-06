//
//  ViewController.swift
//  Voting Eligibility App
//
//  Created by Julai Dangol on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var outputOutlet: UILabel!
    
    @IBOutlet weak var inputOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //
        
        
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        //Read the input
        
        var age = Int(inputOutlet.text!) ?? 0
        
        
        
        // logic to check for eligibility
        
        if(age >= 18){
            outputOutlet.text = ("Your age is \(age) and is eligible for voting")
        }
            
            else {
                outputOutlet.text = ("Your age is \(age) and is not eligible for voting")
            
            
            
        }
        
    }
    
}
