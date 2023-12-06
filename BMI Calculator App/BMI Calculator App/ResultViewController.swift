//
//  ResultViewController.swift
//  BMI Calculator App
//
//  Created by Julai Dangol on 11/2/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var height = 0.0
    var weight = 0.0
    var image = ""
    var bmi = 0.0
    
    @IBOutlet weak var enterWeightOL: UILabel!
    
    
    
    @IBOutlet weak var enterHeightOL: UILabel!
    
 
    
    @IBOutlet weak var displayBMI: UILabel!
    
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(weight)
        enterWeightOL.text! += String(weight)
        enterHeightOL.text! += String(height)
        displayBMI.text! += String(bmi)
        imageViewOL.image = UIImage(named: image)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
