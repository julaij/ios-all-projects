//
//  ViewController.swift
//  AnimationsDemo
//
//  Created by Julai Dangol on 10/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    
    
    @IBOutlet weak var HappyOL: UIButton!
    
    
    @IBOutlet weak var SadOL: UIButton!
    
    
    @IBOutlet weak var AngryOL: UIButton!
    
    
    @IBOutlet weak var ShakeMeOL: UIButton!
    
    
    @IBOutlet weak var ShowMeOL: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        // Move the image view outside of the sctreen view
        ImageViewOL.frame.origin.x = view.frame.maxX
        //Similarly move other components outside of the screen
        HappyOL.frame.origin.x = view.frame.width
        SadOL.frame.origin.x = view.frame.width
        AngryOL.frame.origin.x = view.frame.width
        ShakeMeOL.frame.origin.x = view.frame.width
        
    }
    
    
    
    @IBAction func HappyButtonClicked(_ sender: UIButton) {
        UpdateanddAnimate("happy")
    }
    
    
    
    @IBAction func SadButtonClicked(_ sender: UIButton) {
        UpdateanddAnimate("sad")
    }
    
    
    @IBAction func AngryButtonClicked(_ sender: UIButton) {
        UpdateanddAnimate("angry")
    }
    
    @IBAction func ShakeMeButtonClicked(_ sender: UIButton) {
        
        
        var width = ImageViewOL.frame.width
        width += 40
        
        var height = ImageViewOL.frame.height
        height += 40
        
        var x = ImageViewOL.frame.origin.x - 20
        var y = ImageViewOL.frame.origin.y - 20
        
        //Create a rectangle object
        var largeFrame = CGRect(x:x, y:y, width: width, height: height)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 200, animations: {
        self.ImageViewOL.frame = largeFrame
    })
    }
    
    
    @IBAction func ShowMeButtonClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            //Moving all the componenets to the center
            self.ImageViewOL.center.x = self.view.center.x
            self.HappyOL.center.x = self.view.center.x
            self.SadOL.center.x = self.view.center.x
            self.AngryOL.center.x = self.view.center.x
            self.ShakeMeOL.center.x = self.view.center.x
        })
        //Disable the ShowMe button
        ShowMeOL.isEnabled = false
    }
    
    func UpdateanddAnimate(_  imageName: String){
        //Make the current image as opaque
        UIView.animate(withDuration:1, animations: {
            self.ImageViewOL.alpha = 0
            
        })
        //And assign the new image with animation and make it transparent (alpha should be 1)
        UIView.animate(withDuration:1,delay: 0.5, animations: {
            self.ImageViewOL.alpha = 1
            self.ImageViewOL.image = UIImage(named: imageName)
        })
        
    }
}
