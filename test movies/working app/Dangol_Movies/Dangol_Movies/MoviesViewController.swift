//
//  MoviesViewController.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    var selectedGenre: Genre?

        override func viewDidLoad() {
            super.viewDidLoad()
            
            movieCollectionView.dataSource = self
            movieCollectionView.delegate = self

            if let selectedGenre = selectedGenre {
                title = selectedGenre.category
            }
        }

        // MARK: - UICollectionViewDataSource

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return selectedGenre?.movies.count ?? 0
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            print("IndexPath: \(indexPath.item)")
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
            
                cell.movieImageView.image = nil
                cell.movieNameLabel.text = nil
                cell.movieRatingLabel.text = nil
                cell.movieBoxOfficeLabel.text = nil
                cell.movieYearLabel.text = nil
                cell.moviePlotLabel.text = nil
                cell.movieCastLabel.text = nil
            

            if let movie = selectedGenre?.movies[indexPath.item] {
                
                cell.movieImageView.image = movie.image
                cell.movieNameLabel.text = "Movie Title: \(movie.title)"
                cell.movieRatingLabel.text = "Movie Rating: \(movie.movieRating)"
                cell.movieBoxOfficeLabel.text = "Box Office: \(movie.boxOffice)"
                cell.movieYearLabel.text = "Released Year: \(movie.releasedYear)"
                cell.moviePlotLabel.text = "Movie Plot: \(movie.moviePlot)"
                cell.movieCastLabel.text = "Cast: \(movie.cast.joined(separator: ", "))"
            }

            return cell
        }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    
    }
