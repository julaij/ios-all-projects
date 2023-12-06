//
//  ResultViewController.swift
//  JDPracticeHome
//
//  Created by Julai Dangol on 11/13/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var height = 0.0
    var weight = 0.0
    var bmi = 0.0
    var image = ""
    
    @IBOutlet weak var enterHeightOL: UILabel!
    
    
    
    @IBOutlet weak var enterWeightOL: UILabel!
    
    
    
    @IBOutlet weak var bmiOL: UILabel!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterHeightOL.text! += String(height)
        enterWeightOL.text! += String(weight)
        bmiOL.text! += String(bmi)
        imageViewOL.image = UIImage(named: image)
        
        
        var largeFrame = CGRect(x: x, y: y, width: 2, height: height)
                
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                    self.imageOutlet.frame = largeFrame
        
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
