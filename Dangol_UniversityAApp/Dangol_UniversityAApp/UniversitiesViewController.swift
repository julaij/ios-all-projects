//
//  ViewController.swift
//  Dangol_UniversityAApp
//
//  Created by Julai Dangol on 11/11/23.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var universitiesTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        universitiesTableView.delegate = self
        universitiesTableView.dataSource = self
    }
    
    // MARK: - UITableViewDataSource
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return domains.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "domainCell", for: indexPath)
            cell.textLabel?.text = domains[indexPath.row]
            return cell
        }
        
        // MARK: - UITableViewDelegate
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedDomain = domains[indexPath.row]

            // Perform segue to UniversityListViewController and pass the selected domain
            performSegue(withIdentifier: "listsSegue", sender: selectedDomain)
        }
        
        // MARK: - Navigation
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "listsSegue", let universityListVC = segue.destination as? UniversityListViewController, let selectedDomain = sender as? String {
                // Pass the selected domain to UniversityListViewController
                universityListVC.selectedDomain = selectedDomain
            }
        }


}

