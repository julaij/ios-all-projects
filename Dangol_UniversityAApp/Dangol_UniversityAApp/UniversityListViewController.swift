//
//  UniversityListViewController.swift
//  Dangol_UniversityAApp
//
//  Created by Julai Dangol on 11/11/23.
//

import UIKit

class UniversityListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var universityListTableView: UITableView!
    
    var selectedDomain: String?
    var selectedUniversity: UniversityList?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = selectedDomain
        // Do any additional setup after loading the view.
        universityListTableView.delegate = self
        universityListTableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if let universities = universities.first(where: { $0.domain == selectedDomain }) {
                return universities.list_Array.count
            }
            return 0
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
            if let universities = universities.first(where: { $0.domain == selectedDomain }) {
                let university = universities.list_Array[indexPath.row]
                cell.textLabel?.text = university.collegeName
            }
            return cell
        }

        // MARK: - UITableViewDelegate

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if let universities = universities.first(where: { $0.domain == selectedDomain }) {
                selectedUniversity = universities.list_Array[indexPath.row]
                performSegue(withIdentifier: "universityInfoSegue", sender: self)
            }
        }

        // MARK: - Navigation

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "universityInfoSegue", let universityInfoVC = segue.destination as? UniversityInfoViewController {
                universityInfoVC.selectedUniversity = selectedUniversity
            }
        }

}
