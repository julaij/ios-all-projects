//
//  MovieCollectionViewCell.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!

    @IBOutlet weak var movieBoxOfficeLabel: UILabel!

    @IBOutlet weak var movieYearLabel: UILabel!

    @IBOutlet weak var moviePlotLabel: UILabel!

    @IBOutlet weak var movieCastLabel: UILabel!
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    func assignMovie(with movie: Movie){
        movieImageView.image = movie.image
        movieNameLabel.text! = movie.title
        
    }

}
