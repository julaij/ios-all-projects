//
//  ViewController.swift
//  Course Display App
//
//  Created by Julai Dangol on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var crsNumber: UILabel!
    
    
    
    @IBOutlet weak var crsName: UILabel!
    
    
    @IBOutlet weak var semOffered: UILabel!
    
    @IBOutlet weak var preBtnOL: UIButton!
    
    @IBOutlet weak var nxtBtnOL: UIButton!
    // Create an array of courses
    var courses = [["img01", "44542", "Neywork Security", "Fall 2023"],["img02", "44643", "iOS", "Fall 2023"], ["img03", "44555", "Data Streaming", "Summer 2024"]]
    
    var imageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Previous Button is Disabled
        preBtnOL.isEnabled = false
        
        //Dispaly the first course details
        crsNumber.text = courses[0][1]
        crsName.text = courses[0][2]
        semOffered.text = courses[0][3]
        
        imageDisplay.image = UIImage(named: courses[0][0])
    }
    
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBAction func prevBTNClicked(_ sender: UIButton) {
        // Next Button should be enabled
        nxtBtnOL.isEnabled = true
        
        // Derement the imageNumber
        imageNumber -= 1
        
        //update the display using updateDisplay() function
        updateDisplay(imageNumber)
        //If we reach begining of the array, prev button should be disabled
        
        if(imageNumber == 0){
            preBtnOL.isEnabled = false
        }
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        // Previous Button should be enabled
        preBtnOL.isEnabled = true
        
        //Next element in the courses array must be displayed
        imageNumber += 1
        
        // call the updateDisplay() method
        updateDisplay(imageNumber)
        
        
        
        
        // When you reach the end of the array, Next button should be disabled
        if (imageNumber == courses.count-1)
        {
            nxtBtnOL.isEnabled = false
        }
        
    }
    func updateDisplay(_ imageNumber:Int){
        crsNumber.text = courses[imageNumber][1]
        crsName.text = courses[imageNumber][2]
        semOffered.text = courses[imageNumber][3]
        imageDisplay.image = UIImage(named: courses[imageNumber][0])
        
    }
}
