//
//  ViewController.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var genreTableView: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "Movies App"
            genreTableView.dataSource = self
            genreTableView.delegate = self
            genreTableView.reloadData()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return genresData.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
            let genre = genresData[indexPath.row]
            cell.textLabel?.text = genre.category
            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedGenre = genresData[indexPath.row].category
            print("Selected Genre: \(selectedGenre)")
            performSegue(withIdentifier: "movieSegue", sender: selectedGenre)

        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "movieSegue",
                let destinationVC = segue.destination as? MoviesViewController,
                let selectedGenreCategory = sender as? String {
                
                if let selectedGenre = genresData.first(where: { $0.category == selectedGenreCategory }) {
                    destinationVC.selectedGenre = selectedGenre
                }
            }
        }
    }
