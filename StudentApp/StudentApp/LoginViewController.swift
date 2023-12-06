//
//  ViewController.swift
//  StudentApp
//
//  Created by Julai Dangol on 11/7/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var enterSIDOL: UITextField!
    
    //creating a global variable for holding a student
        var studentFound = Student()
        
        //to check whether user is student/guest
        //Initially isStudent is false that means user is a guest
        var isStudent = false
        
        //Array of type Student, we imported it from the 'Student' file
        var studentsArray = students
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


    @IBAction func getStudentDetailsBTN(_ sender: UIButton) {
    }
}

