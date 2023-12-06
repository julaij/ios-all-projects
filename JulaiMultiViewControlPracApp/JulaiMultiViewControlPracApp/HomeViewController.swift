//
//  ViewController.swift
//  JulaiMultiViewControlPracApp
//
//  Created by Julai Dangol on 11/7/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    var weight = 0.0
    var height = 0.0
    var bmi = 0.0
    var imageName = ""
    
    
    @IBOutlet weak var enterWeightOL: UITextField!
    
    
    
    @IBOutlet weak var enterHeightOL: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func calcBMIBTN(_ sender: UIButton) {
        
        weight = Double(enterWeightOL.text!)!
        height = Double(enterHeightOL.text!)!
        
        bmi = weight/height * height * 703
        if bmi <= 18.4{
            imageName = "Underweight"
        }
        if(bmi >= 18.5 || bmi <= 24.9){
            imageName = "Normalweight"
        }
        
        if(bmi >= 25.0 || bmi <= 39.9){
            imageName = "Overweight"
        }
        
        if(bmi >= 40){
            imageName = "Obeseweight"
        }
    }
    
}

