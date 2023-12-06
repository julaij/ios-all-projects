//
//  ViewController.swift
//  Dangol_WordGuess
//
//  Created by Julai Dangol on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        guessLetterButton.isEnabled = !sender.text!.isEmpty

    }
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    var words = [["SWIFT", "Programming Language"],
                 ["DOG", "Animal"],
                 ["CYCLE", "Two wheeler"],
                 ["MACBOOK", "Apple device"],
                 ["PIZZA", "Food"]]
    
    var count = 0;
    var guessCount = 0
    var word = ""
    var lettersGuessed = ""
    let maxNumOfWrongGuesses = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            displayImage.isHidden = true

            // Initialize word-related variables
            count = 0
            word = words[count][0]
            lettersGuessed = ""

            // Initialize userGuessLabel with underscores
            updateUnderscores()

            hintLabel.text = "Hint: " + words[count][1]

            // Update totalWordsLabel
            let totalWords = words.count
            totalWordsLabel.text = "Total number of words in game: \(totalWords)"
            
            // Enable the "Play Again" button initially
            playAgainButton.isEnabled = true
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        if let guessText = guessLetterField.text?.last {
                let guessedLetter = String(guessText).uppercased()
                
                if guessedLetter.isEmpty {
                    // Ensure a letter was entered
                    return
                }

                if word.contains(guessedLetter) {
                    // The guessed letter is in the word
                    if !lettersGuessed.contains(guessedLetter) {
                        lettersGuessed += guessedLetter
                        updateGuessLabel()
                    }
                } else {
                    // The guessed letter is not in the word
                    guessCount += 1
                    guessCountLabel.text = "You have made \(guessCount) guesses."

                    if guessCount == 1 {
                        // If this is the first guess, update the label accordingly
                        guessCountLabel.text = "You have made 1 guess"
                    }

                    if guessCount >= maxNumOfWrongGuesses {
                        // You've used all available guesses
                        guessCountLabel.text = "You have used all available guesses, Please play again"
                        playAgainButton.isHidden = false
                    }
                }
            }

            // Clear the text field
            guessLetterField.text = ""

    }
    
    func updateGuessLabel() {
        var newGuess = ""
        for letter in word {
            if lettersGuessed.contains(String(letter)) {
                newGuess += "\(letter) "
            } else {
                newGuess += "_ "
            }
        }

        userGuessLabel.text = newGuess

        if !newGuess.contains("_") {
            let imageName = word + ".jpg"
            displayImage.image = UIImage(named: imageName) // Assuming you've named the images correctly
            displayImage.isHidden = false
            statusLabel.text = "Congratulations! You guessed the word."

            let wordsGuessedCount = count + 1
            let wordsRemainingCount = words.count - wordsGuessedCount

            wordsGuessedLabel.text = "Total number of words guessed succesfully: \(wordsGuessedCount)"
            wordsRemainingLabel.text = "Total number of words remaining in game: \(wordsRemainingCount)"

            if wordsGuessedCount == words.count {
                // All words have been guessed
                statusLabel.text = "Congratulations, You are done, Please start over again"
            } else {
                playAgainButton.isHidden = false
            }
        }
    }


    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
        if count == words.count - 1 {
                count = 0
            } else {
                count += 1
            }
            
            word = words[count][0]
            lettersGuessed = ""
            userGuessLabel.text = String(repeating: "_ ", count: word.count)
            
            // Reset the guess count
            guessCount = 0
            guessCountLabel.text = "You have made 0 guesses"

            statusLabel.text = ""
            displayImage.isHidden = true

            // Update the hint label with the hint for the current word
            hintLabel.text = "Hint: " + words[count][1]

            // Hide the "Play Again" button
            playAgainButton.isHidden = true
    }
    
    func updateUnderscores() {
        let underscoreString = String(repeating: "_ ", count: word.count)
        userGuessLabel.text = underscoreString
    }
    

}

