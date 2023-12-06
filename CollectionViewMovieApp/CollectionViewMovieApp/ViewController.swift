//
//  ViewController.swift
//  CollectionViewMovieApp
//
//  Created by Julai Dangol on 11/16/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create a cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCollectionViewCell
        
        //populate a cell
        cell.assignMovie(with: movies[indexPath.row])
        
        
        //return the cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOL.text = "Title: \(movies[indexPath.row].title)"
        
    }
    
    
    
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    
    
    @IBOutlet weak var titleOL: UILabel!
    
    
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    
    
    @IBOutlet weak var ratingOL: UILabel!
    
    
    @IBOutlet weak var boxOfficeOL: UILabel!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        collectionViewOL.dataSource = self
        collectionViewOL.delegate = self
    }


}

