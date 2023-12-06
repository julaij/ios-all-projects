//
//  ViewController.swift
//  Dangol_Exam03
//
//  Created by Julai Dangol on 11/30/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        
        //populate the cell
        cell.textLabel?.text = contacts[indexPath.row][0]
        
        //Return the cell
        return cell
        
    }
    
    @IBOutlet weak var tableViewOL: UITableView!
    
    var contacts = [
        ["Mina 🤗", "660528117"],
        ["Alex 🚀", "789403215"],
        ["Luna 🌙", "555123456"],
        ["Jake 🎮", "987654321"],
        ["Ava 🎨", "123456789"],
        ["Max 🏰", "876543210"],
        ["Zara 📚", "456789012"],
        ["Leo 🎸", "321098765"],
        ["Nina 🌺", "234567890"],
        ["Ethan 🚗", "890123456"]
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "cellSegue"){
            let destination = segue.destination as! ContactInfoViewController
            destination.name = contacts[(tableViewOL.indexPathForSelectedRow?.row)!][0]
            destination.phoneNumber = contacts[(tableViewOL.indexPathForSelectedRow?.row)!][1]
            
        }
        
    }
    
}
