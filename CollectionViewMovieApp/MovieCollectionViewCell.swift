//
//  MovieCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Julai Dangol on 11/16/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    func assignMovie(with movie:Movie){
        imageViewOL.image = movie.image
    }
    
    
    
}
