//
//  ViewController.swift
//  BMI Calculator App
//
//  Created by Julai Dangol on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterWeightOL: UITextField!
    
    
    @IBOutlet weak var enterHeightOL: UITextField!
    
    
    var weight = 0.0
    var height = 0.0
    var bmi = 0.0
    var imageName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "BMI"
    }
    
    
    
    @IBAction func calcBMI(_ sender: UIButton) {
        
        weight = Double(enterWeightOL.text!)!
        height = Double(enterHeightOL.text!)!
        
        bmi = (weight/(height * height) ) * 703
        
        print(bmi);
        
        if bmi <= 18.4{
            imageName = "Underweight"
        }
        
        else if (bmi >= 18.5 && bmi <= 24.9){
            imageName = "Normalweight"
        }
        
        else if (bmi >= 25.0 && bmi <= 39.9){
            imageName = "Overweight"
        }
        
        else {
                imageName = "Obeseweight"
            }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            
            var destination = segue.destination as! ResultViewController
            
            destination.weight = weight
            destination.height = height
            destination.bmi = bmi
            destination.image = imageName
            
            
            
        }
        
    }
    
}
