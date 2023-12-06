//
//  UniversityInfoViewController.swift
//  Dangol_UniversityAApp
//
//  Created by Julai Dangol on 11/11/23.
//

import UIKit

class UniversityInfoViewController: UIViewController {
    
    
    
    @IBOutlet weak var universityImageViewOutlet: UIImageView!
    
    
    @IBOutlet weak var universityInfoOutlet: UITextView!
    
    var selectedUniversity: UniversityList?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = selectedUniversity?.collegeName
        if let selectedUniversity = selectedUniversity {
            universityImageViewOutlet.image = UIImage(named: selectedUniversity.collegeImage)
        }
        }
    
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)

         // Add a scaling animation for the image
         universityImageViewOutlet.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
         UIView.animate(withDuration: 0.5) {
             self.universityImageViewOutlet.transform = .identity
         }
     }
    
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        if let selectedUniversity = selectedUniversity {
            
            universityInfoOutlet.text = selectedUniversity.collegeInfo
            
        }

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
