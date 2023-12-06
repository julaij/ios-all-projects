//
//  ViewController.swift
//  JDPracticeHome
//
//  Created by Julai Dangol on 11/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var enterHeightOL: UITextField!
    
    
    
    @IBOutlet weak var enterWeightOL: UITextField!
    
    var height = 0.0
    var weight = 0.0
    var bmi = 0.0
    var image = ""
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func calcBMIBTN(_ sender: UIButton) {
        height = Double(enterHeightOL.text!)!
        weight = Double (enterWeightOL.text!)!
        
        bmi = (weight / (height * height)) * 703
        
        if (bmi <= 18.4) {
            image = "Underweight"
        }
        else if (bmi >= 18.4 && bmi <= 24.9) {
            image = "Normal Weight"
        }
        
        else if (bmi >= 25.0 && bmi >= 39.9) {
            image = "Overweight"
        }
        
        else {
            image = "Obeseweight"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
                if transition == "resultSegue"{
                    var destination = segue.destination as! ResultViewController
                    
                    destination.height = height
                    destination.weight = weight
                    destination.bmi = bmi
                    destination.image = image
                    
                    
                    
                }

    }
    
    
}

