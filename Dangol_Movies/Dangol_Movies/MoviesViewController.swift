//
//  MoviesViewController.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MovieInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovies(im: MovieInfo[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text!="MovieName : \(MovieInfo[indexPath.row].title)"
        movieRatingLabel.text!="MovieRating : \(MovieInfo[indexPath.row].movieRating)"
        movieBoxOfficeLabel.text!="BoxOffice Collection : \(MovieInfo[indexPath.row].boxOffice)"
        movieYearLabel.text!="Movie Released Year : \(MovieInfo[indexPath.row].releasedYear)"
        moviePlotLabel.text!="Plot : \(MovieInfo[indexPath.row].moviePlot)"
        
        var moviecasts=""
        for actor in MovieInfo[indexPath.row].cast{
            moviecasts+=actor+", "
        }
        moviecasts.removeLast()
        moviecasts.removeLast()
        movieCastLabel.text!="Cast : \(moviecasts)"
    }
 
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var MovieInfo : [Movie]=[]

        override func viewDidLoad() {
            super.viewDidLoad()
            
            movieCollectionView.dataSource = self
            movieCollectionView.delegate = self

        }
    
    
    }
