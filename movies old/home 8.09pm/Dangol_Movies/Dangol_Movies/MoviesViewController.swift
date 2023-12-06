//
//  MoviesViewController.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MovieData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell",
                                                    for: indexPath) as! MovieCollectionViewCell
        cell.assignMovies(im: MovieData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text!="MovieName : \(MovieData[indexPath.row].title)"
        movieRatingLabel.text!="MovieRating : \(MovieData[indexPath.row].movieRating)"
        movieBoxOfficeLabel.text!="BoxOffice Collection : \(MovieData[indexPath.row].boxOffice)"
        movieYearLabel.text!="Movie Released Year : \(MovieData[indexPath.row].releasedYear)"
        moviePlotLabel.text!="Plot : \(MovieData[indexPath.row].moviePlot)"
        var filmStars=""
        for filmStar in MovieData[indexPath.row].cast{
            filmStars+=filmStar+", "
        }
        filmStars.removeLast()
        filmStars.removeLast()
        movieCastLabel.text!="Cast : \(filmStars)"
    }
 
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var MovieData : [Movie]=[]

        override func viewDidLoad() {
            super.viewDidLoad()
            
            movieCollectionView.dataSource = self
            movieCollectionView.delegate = self

        }
    
    
    }
