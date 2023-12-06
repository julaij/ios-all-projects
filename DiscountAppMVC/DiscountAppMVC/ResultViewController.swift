//
//  ResultViewController.swift
//  DiscountAppMVC
//
//  Created by Julai Dangol on 10/31/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var displayAmountOL: UILabel!
    
    
    @IBOutlet weak var displayDiscRateOL: UILabel!
    
    
    @IBOutlet weak var displayPriceAfterDiscOL: UILabel!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
   
    
    
    
    var amount = ""
    var discRate = ""
    var priceAfterDiscount = 0.0
    var imagename = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(amount)
        displayAmountOL.text! += amount
        displayAmountOL.text! += discRate
        displayPriceAfterDiscOL.text! += String(priceAfterDiscount)
        imageViewOL.image = UIImage(named: imagename)
        
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
