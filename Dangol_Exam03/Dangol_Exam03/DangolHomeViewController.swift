//
//  ViewController.swift
//  Dangol_Exam03
//
//  Created by Julai Dangol on 11/30/23.
//

import UIKit

class DangolHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = DangolTVOL.dequeueReusableCell(withIdentifier: "DangolNameCell", for: indexPath)
        
        // Populate the cell with initials
        let fullName = contacts[indexPath.row][0]
        let initials = getInitials(from: fullName)
        cell.textLabel?.text = initials
        
        // Return the cell
        return cell
    }

    // Function to get initials from a full name
    func getInitials(from fullName: String) -> String {
        let nameComponents = fullName.components(separatedBy: " ")
        
        if nameComponents.count >= 2 {
            let firstNameInitial = String(nameComponents[0].prefix(1))
            let lastNameInitial = String(nameComponents.last!.prefix(1))
            return firstNameInitial + "." + lastNameInitial
        } else {
            // If there is only one name, return its initial
            return String(fullName.prefix(1))
        }
    }

    
    
    
    
    @IBOutlet weak var DangolTVOL: UITableView!
    
    
    var contacts = [
        ["Mina Jackson 🤗", "660528117"],
        ["Alex White🚀", "789403215"],
        ["Luna Roy🌙", "555123456"],
        ["Jake Thompson 🎮", "987654321"],
        ["Ava Niraula🎨", "123456789"],
        ["Max Brown 🏰", "876543210"],
        ["Zara Derulo 📚", "456789012"],
        ["Leo Dicaprio 🎸", "321098765"],
        ["Nina Dobrey 🌺", "234567890"],
        ["Ethan Hoot🚗", "890123456"]
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DangolTVOL.delegate = self
        DangolTVOL.dataSource = self
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "DangolContactSegue"){
            let destination = segue.destination as! DangolContactViewController
            destination.initials = contacts[(DangolTVOL.indexPathForSelectedRow?.row)!][0]
            destination.phoneNumber = contacts[(DangolTVOL.indexPathForSelectedRow?.row)!][1]
            
        }
        
    }


}

