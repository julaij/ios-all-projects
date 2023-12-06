//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Julai Dangol on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dashLineOL: UILabel!
    
    
    @IBOutlet weak var hintOL: UILabel!
    
    
    @IBOutlet weak var txtfldOL: UITextField!
    
    
    @IBOutlet weak var checkOL: UIButton!
    
    
    @IBOutlet weak var displayOL: UILabel!
    
    
    
    @IBOutlet weak var playAgainOL: UIButton!
   
    var count = 0;
    var lettersGuessed = ""
    var words = [["Swift", "Programming Language"],[ "Dog", "Animal"],[ "CYCLE", "Two Wheeler"],[ "MACBOOK", "Apple Device"]]
    
    var word = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Check Button should be disabled.
        
        checkOL.isEnabled = false;
        
        //Get the first word from the array
        word = words[count][0]
        
        displayOL.text = ""
        
    }
    
    
    
    @IBAction func txtfldBTN(_ sender: UITextField) {
    }
    
    
    
    
    @IBAction func checkBTN(_ sender: UIButton) {
    }
    
    
    @IBAction func playAgainBTN(_ sender: UIButton) {
        
        
        
        
        
        
        
    }
    

}

