//
//  MeaningViewController.swift
//  PracticeExam03
//
//  Created by Julai Dangol on 11/28/23.
//

import UIKit

class MeaningViewController: UIViewController {
    
    
    @IBOutlet weak var nameOL: UILabel!
    
    
    
    @IBOutlet weak var meaningOL: UILabel!
    var name = ""
    var meaning = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameOL.text! += name
        meaningOL.text! += meaning
        
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
