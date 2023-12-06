//
//  MovieCollectionViewCell.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    func assignMovies(im : Movie) {
        movieImageView.image = im.image
    }

    
}
