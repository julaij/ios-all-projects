//
//  ViewController.swift
//  Exam1Pr
//
//  Created by Julai Dangol on 10/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func btnClick(_ sender: Any) {
        imageView.image = UIImage(named: "Photo")
    }
    
}

