//
//  ContactInfoViewController.swift
//  Dangol_Exam03
//
//  Created by Julai Dangol on 11/30/23.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var phoneNumOL: UILabel!
    
    var name = ""
    var phoneNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameOL.text! += name
        phoneNumOL.text! += phoneNumber
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
