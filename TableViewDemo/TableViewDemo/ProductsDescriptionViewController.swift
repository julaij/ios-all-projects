//
//  ProductsDescriptionViewController.swift
//  TableViewDemo
//
//  Created by Julai Dangol on 11/9/23.
//

import UIKit


class ProductsDescriptionViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayDescriptionOL: UILabel!
    
    var product:Product?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayDescriptionOL.text = "The Product Name is \((product?.name)!) is of category: \((product?.category)!)"
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
