//
//  MoviesViewController.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedGenre?.movies.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovie(with: (selectedGenre?.movies[indexPath.item])!)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)

    }
    
    func assignMovieDetails(index: IndexPath){
//        movieNameLabel.text! += "Movie title: is \(String(describing: selectedGenre?.movies[index.item].title))"
        
        
    }
    
    
    var selectedGenre: Genre?
    
    @IBOutlet weak var movieCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieCollectionView.isUserInteractionEnabled = true

        
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self

        if let selectedGenre = selectedGenre {
            title = selectedGenre.category
        }
    }

    }
