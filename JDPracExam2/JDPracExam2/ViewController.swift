//
//  ViewController.swift
//  JDPracExam2
//
//  Created by Julai Dangol on 11/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterHeightOL: UITextField!

    @IBOutlet weak var enterWeightOL: UITextField!
    
    var weight = 0.0
    var height = 0.0
    var bmi = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  

    @IBAction func calcBMIBTN(_ sender: UIButton) {
        
         height = Double(enterHeightOL.text!)!
         weight = Double(enterWeightOL.text!)!
        
         bmi = (weight / (height * height)) * 703
                
        }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        if transition == "resultSegue"{
        
        var destination = segue.destination as! ResultViewController
        
        destination.weight = weight
        destination.height = height
        destination.bmi = bmi
            
            
            
            
        }
        
        
        
        
    }
    
    
    
}


