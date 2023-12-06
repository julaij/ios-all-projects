//
//  ResultViewController.swift
//  Dangol_Exam02
//
//  Created by Julai Dangol on 11/14/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    
    var loanTypeLabel = ""
    var term = ""
    var totalMonths = 0.0
    var monthlyInterestRate = 0.0
    var monthlyEMIPayment = 0.0
    var enteredAmountLabel = 0.0
    var enteredInterestRateLabel = 0.0
    var calculatedEMI = 0.0
    var emiAmountLabel = 0.0
    var loanTypeImageView = ""
    var loanType = ""
    
    
    
    @IBOutlet weak var loanTypeOL: UILabel!
    
    
    @IBOutlet weak var enteredLoanAmtOL: UILabel!
    
    
    
    
    @IBOutlet weak var enteredInterestRateOL: UILabel!
    
    
    
    @IBOutlet weak var calculatedMonthlyEMI: UILabel!
    
    
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loanTypeOL.text! += String(loanType)
                enteredAmountLabel.text! += String(enteredLoanAmount)
                enteredInterestRateLabel.text! += String(enteredInterestRate) + "%"
                emiAmountLabel.text! += String(format: "%.2f", calculatedEMI)


                loanTypeImageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                UIView.animate(withDuration: 1.0,
                               delay: 0,
                               usingSpringWithDamping: 0.5,
                               initialSpringVelocity: 0.1,
                               options: .curveEaseInOut,animations: {
                    self.loanTypeImageView.transform = CGAffineTransform.identity
                },
                completion: nil)
        
        
        
        

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
