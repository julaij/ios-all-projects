//
//  ResultViewController.swift
//  JulaiPracHome
//
//  Created by Julai Dangol on 11/14/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var amount = 0.0
    var discountRate = 0.0
    var priceAfterDiscount = 0.0
    var image = ""
    
    
    
    @IBOutlet weak var enterAmountOL: UILabel!
    
    
    
    @IBOutlet weak var enterDisRateOL: UILabel!
    
    
    
    @IBOutlet weak var priceAfterDisc: UILabel!
    
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         enterAmountOL.text! += String(amount)
        enterDisRateOL.text! += String(discountRate)
        priceAfterDisc.text! = String(priceAfterDiscount)
        
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
