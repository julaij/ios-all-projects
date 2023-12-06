//
//  ViewController.swift
//  PracticeExam03
//
//  Created by Julai Dangol on 11/28/23.
//

import UIKit




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "cellSegue", for: indexPath)
        
        //populate the cell
        cell.textLabel?.text = words[indexPath.row][0]
        
        //Return the cell
        return cell
    }
    
    
    
    @IBOutlet weak var tableViewOL: UITableView!
    
    
    var words = [["Benevolent 🤗", "Well-meaning and kindly."], ["Courage 💪", "The ability to do something that frightens one."], ["Genuine 🌼", "Truly what something is said to be; authentic."], ["Hope 🌟", "A feeling of expectation and desire for particular thing to happen."], ["Joy 😄", "A feeling of great pleasure and happiness."], ["Kindness ❤️", "The quality of being friendly, generous, and considerate."],["Peace ✌️", "A state of tranquility or quiet."], ["Resilient 🍃", "Able to withstand or recover quickly from difficult conditions."], ["Sad 🥲", "Feeling or showing sorrow; unhappy."], ["Serene 🚨", "Calm, peaceful, and untroubled."]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "cellSegue"){
            let destination = segue.destination as! MeaningViewController
            destination.name = words[(tableViewOL.indexPathForSelectedRow?.row)!][0]
            destination.meaning = words[(tableViewOL.indexPathForSelectedRow?.row)!][1]
            
        }
        
        
        
    }
    
}
