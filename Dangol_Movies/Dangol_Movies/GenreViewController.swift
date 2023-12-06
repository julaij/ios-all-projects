//
//  ViewController.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genresData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = genresData[indexPath.row].category
        return cell
    }

    @IBOutlet weak var genreTableView: UITableView!
    
    var Genres = genresData

    override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "Movies App"
            genreTableView.dataSource = self
            genreTableView.delegate = self
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if(transition=="movieSegue") {
                let destination = segue.destination as! MoviesViewController
                destination.MovieInfo = genresData[(genreTableView.indexPathForSelectedRow?.row)!].movies
            }
        }
    }
