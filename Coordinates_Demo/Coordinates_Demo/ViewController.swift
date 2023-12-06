//
//  ViewController.swift
//  Coordinates_Demo
//
//  Created by Julai Dangol on 10/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX = ImageViewOL.frame.minX
        let minY = ImageViewOL.frame.minY
        
        print(minX, ",", minY)
        
        //MaxX and MaxY represents the bottom right corner of the ImageViewOL
        let maxX = ImageViewOL.frame.maxX
        let maxY = ImageViewOL.frame.maxY
        
        print(maxX, ",", maxY)
        
        let midX = ImageViewOL.frame.midX
        let midY = ImageViewOL.frame.midY
        
        print(midX, ",", midY)
        
        //Display the Image at the top left corner of the view
        ImageViewOL.frame.origin.x = 0
        ImageViewOL.frame.origin.y = 0
        
        //Display the Image at the top right corner of the view
        ImageViewOL.frame.origin.x = 314
        ImageViewOL.frame.origin.y = 0
        
        //Display the Image at the bottom right corner of the view
        ImageViewOL.frame.origin.x = 314
        ImageViewOL.frame.origin.y = 796
        
        //Display the Image at the bottom left corner of the view
        ImageViewOL.frame.origin.x = 0
        ImageViewOL.frame.origin.y = 796
        
        //Display the Image at the center corner of the view
        //(314/2-50, 896/2-50)
        ImageViewOL.frame.origin.x = 157
        ImageViewOL.frame.origin.y = 398
        
        
        
        
    }
    
    
    
    


}

