//
//  ViewController.swift
//  Coordinate_Demo2Practice
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
        
        let maxX = ImageViewOL.frame.maxX
        let maxY = ImageViewOL.frame.maxY
        
        print(maxX, ",", maxY)
        
        
        let midX = ImageViewOL.frame.midX
        let midY = ImageViewOL.frame.midY
        
        print(midX, ",", midY)
        
        ImageViewOL.frame.origin.x = 0
        ImageViewOL.frame.origin.y = 0
        ImageViewOL.frame.origin.x = 314
        ImageViewOL.frame.origin.x = 0
        
        
        ImageViewOL.frame.origin.x = 314
        ImageViewOL.frame.origin.x = 796
        
        
              
    
        
        
        
        
        
              }
              
              


}

