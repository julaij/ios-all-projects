//
//  ResultViewController.swift
//  JDPracExam2
//
//  Created by Julai Dangol on 11/11/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    // Declare properties to store the passed values
    var weight = 0.0
    var height = 0.0
    var bmi = 0.0
    var image: ""
    
    
    @IBOutlet weak var enterHeightOL: UILabel!
    
    @IBOutlet weak var enterWeightOL: UILabel!
    
    
    @IBOutlet weak var bmiOL: UILabel!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
                enterHeightOL.text! += String(height)

                enterWeightOL.text! += String(weight)

                bmiOL.text! += String(bmi)
        
                imageViewOL.image  = UIImage(named: image)
        
                var largeFrame = CGRect(x: 1, y: 23, width: 2, height: 12)
                
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                    self.imageViewOL.frame = largeFrame
                })
    }
    

}
