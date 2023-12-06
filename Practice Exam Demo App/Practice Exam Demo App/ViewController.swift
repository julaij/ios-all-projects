//
//  ViewController.swift
//  Practice Exam Demo App
//
//  Created by Julai Dangol on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bookISBN: UITextField!
    
    @IBOutlet weak var bookName: UITextField!
    
    
    @IBOutlet weak var bookPrice: UITextField!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Tax: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ResultLabel: UILabel!

    
    
    @IBAction func CalcPriceAfterTax(_ sender: UIButton) {
        
        
        var price = Double(bookPrice.text!)
        var tax = Double(Tax.text!)
        var result = price!+tax!;
        //var results = price + tax;
        
        ResultLabel.text = "\(result)"
        
        imageView.image = UIImage(named: "ImageCCC")
 
        
        
    }
    
    
    
}

