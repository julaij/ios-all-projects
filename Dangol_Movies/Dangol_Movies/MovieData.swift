//
//  MovieData.swift
//  Dangol_Movies
//
//  Created by Julai Dangol on 11/26/23.
//

import UIKit

import Foundation

struct Movie {
    var title: String
    var image: UIImage
    var releasedYear: String
    var movieRating: String
    var boxOffice: String
    var moviePlot: String
    var cast: [String]
}

struct Genre {
    var category: String
    var movies: [Movie]
}

let genresData: [Genre] = [
    Genre(category: "Action", movies: [
        Movie(title: "Die Hard", image: UIImage(named: "die_hard_image")!, releasedYear: "1988", movieRating: "R", boxOffice: "$140 million", moviePlot: "NYPD officer tries to save hostages in a skyscraper.", cast: ["Bruce Willis", "Alan Rickman"]),
        Movie(title: "The Dark Knight", image: UIImage(named: "dark_knight_image")!, releasedYear: "2008", movieRating: "PG-13", boxOffice: "$1 billion", moviePlot: "Batman faces the Joker in Gotham City.", cast: ["Christian Bale", "Heath Ledger"]),
        Movie(title: "Mad Max: Fury Road", image: UIImage(named: "mad_max_image")!, releasedYear: "2015", movieRating: "R", boxOffice: "$375 million", moviePlot: "In a post-apocalyptic wasteland, Max helps Furiosa escape from a warlord.", cast: ["Tom Hardy", "Charlize Theron"]),
        Movie(title: "Mission: Impossible - Fallout", image: UIImage(named: "mission_impossible_image")!, releasedYear: "2018", movieRating: "PG-13", boxOffice: "$791 million", moviePlot: "Ethan Hunt and his team try to prevent a global catastrophe.", cast: ["Tom Cruise", "Henry Cavill"]),
        Movie(title: "John Wick", image: UIImage(named: "john_wick_image")!, releasedYear: "2014", movieRating: "R", boxOffice: "$88 million", moviePlot: "An ex-hitman seeks vengeance for the killing of his dog.", cast: ["Keanu Reeves", "Michael Nyqvist"])
    ]),
    
    Genre(category: "Comedy", movies: [
        Movie(title: "Superbad", image: UIImage(named: "superbad_image")!, releasedYear: "2007", movieRating: "R", boxOffice: "$170 million", moviePlot: "High school friends try to make the most of their last days.", cast: ["Jonah Hill", "Michael Cera"]),
        Movie(title: "Bridesmaids", image: UIImage(named: "bridesmaids_image")!, releasedYear: "2011", movieRating: "R", boxOffice: "$288 million", moviePlot: "A woman's life unravels as she competes with her best friend's other bridesmaids.", cast: ["Kristen Wiig", "Maya Rudolph"]),
        Movie(title: "The Hangover", image: UIImage(named: "hangover_image")!, releasedYear: "2009", movieRating: "R", boxOffice: "$467 million", moviePlot: "Friends search for their missing friend in Las Vegas after a wild bachelor party.", cast: ["Bradley Cooper", "Zach Galifianakis"]),
        Movie(title: "Anchorman: The Legend of Ron Burgundy", image: UIImage(named: "anchorman_image")!, releasedYear: "2004", movieRating: "PG-13", boxOffice: "$90 million", moviePlot: "A 1970s news anchorman struggles with the arrival of a talented female journalist.", cast: ["Will Ferrell", "Christina Applegate"]),
        Movie(title: "Dumb and Dumber", image: UIImage(named: "dumb_and_dumber_image")!, releasedYear: "1994", movieRating: "PG-13", boxOffice: "$247 million", moviePlot: "Two well-meaning but clueless friends embark on a cross-country trip.", cast: ["Jim Carrey", "Jeff Daniels"])
    ]),
    
    Genre(category: "Drama", movies: [
        Movie(title: "The Shawshank Redemption", image: UIImage(named: "shawshank_image")!, releasedYear: "1994", movieRating: "R", boxOffice: "$58 million", moviePlot: "A banker is sentenced to life in Shawshank State Penitentiary.", cast: ["Tim Robbins", "Morgan Freeman"]),
        Movie(title: "Schindler's List", image: UIImage(named: "schindlers_list_image")!, releasedYear: "1993", movieRating: "R", boxOffice: "$322 million", moviePlot: "A German businessman saves Jews during the Holocaust.", cast: ["Liam Neeson", "Ben Kingsley"]),
        Movie(title: "The Godfather", image: UIImage(named: "godfather_image")!, releasedYear: "1972", movieRating: "R", boxOffice: "$250 million", moviePlot: "The patriarch of a powerful crime family transfers control to his reluctant son.", cast: ["Marlon Brando", "Al Pacino"]),
        Movie(title: "Forrest Gump", image: UIImage(named: "forrest_gump_image")!, releasedYear: "1994", movieRating: "PG-13", boxOffice: "$678 million", moviePlot: "A man with a low IQ experiences major historical events in the 20th century.", cast: ["Tom Hanks", "Robin Wright"]),
        Movie(title: "The Silence of the Lambs", image: UIImage(named: "silence_of_the_lambs_image")!, releasedYear: "1991", movieRating: "R", boxOffice: "$273 million", moviePlot: "An FBI agent seeks the help of a brilliant but insane serial killer to catch another killer.", cast: ["Jodie Foster", "Anthony Hopkins"])
    ])
]
