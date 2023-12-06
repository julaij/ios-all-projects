//
//  YourLastNameContactViewController.swift
//  Dangol_Exam03
//
//  Created by Julai Dangol on 11/30/23.
//

import UIKit

class DangolContactViewController: UIViewController {
    
    
    
    @IBOutlet weak var initialsOL: UILabel!
    
    
    @IBOutlet weak var phoneNumberOL: UILabel!
    
    var initials = ""
    var phoneNumber = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialsOL.text! += initials
        phoneNumberOL.text! += phoneNumber

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
