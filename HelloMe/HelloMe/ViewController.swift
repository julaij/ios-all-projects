//
//  ViewController.swift
//  HelloMe
//
//  Created by Julai Dangol on 8/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fNameOL: UITextField!
    
    @IBOutlet weak var lNameOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: Any) {
        var input = fNameOL.text!
        var input2 = lNameOL.text!
        
        outputOL.text = " Hello \(input), \(input2)🤫" 
        //Read input First and Last Name
        
    }
    
    
}

