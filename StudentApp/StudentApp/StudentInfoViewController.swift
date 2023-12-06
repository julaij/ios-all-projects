//
//  StudentInfoViewController.swift
//  StudentApp
//
//  Created by Julai Dangol on 11/7/23.
//

import UIKit

class StudentInfoViewController: UIViewController {
    
    
    @IBOutlet weak var displaySIDOL: UILabel!
    
    
    @IBOutlet weak var displayNameOL: UILabel!
    
    
    @IBOutlet weak var displayEmailOL: UILabel!
    
    
    
    
    @IBOutlet weak var viewCourseOL: UIButton!
    
    
    
    
    var studentObj = Student()
        
        var guestUser:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if guestUser {
            //if the user is guest we will hide all the outlets and display 'Guest User'
            displayEmailOL.isHidden = true
            displayNameOL.text = "Name: Guest User"
            displaySIDOL.isHidden = true
            viewCourseOL.isHidden = true
            
        }else{
            
            //If the student is found, then we assign the values of the studentObj to the outelts
            displaySIDOL.text = "SID: " + studentObj.sid
            displayEmailOL.text = "Email: " + studentObj.email
            displayNameOL.text = "Name: " + studentObj.name
            
        }
    }
    
    
    
    


    
    
    @IBAction func viewCourseBTN(_ sender: UIButton) {
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
