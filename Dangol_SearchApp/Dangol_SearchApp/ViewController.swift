//
//  ViewController.swift
//  Dangol_SearchApp
//
//  Created by Julai Dangol on 10/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchButton: UIButton!
       
       
    @IBOutlet weak var previousButton: UIButton!
       
    @IBOutlet weak var nextButton: UIButton!
       
       
    @IBOutlet weak var resetButton: UIButton!
    
    var imageNo = 0;
    var topic: Int = -1
    var count : Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchButton.isEnabled = false
        previousButton.isHidden = true
        nextButton.isHidden = true
        resetButton.isHidden = true
        topicInfoText.isHidden = true
        resultImage.image = UIImage(named: "welcome")
    }
    
    var arr = [["actor1","actor2","actor3","actor4","actor5"],["food1","food2","food3","food4","food5" ],["animal1","animal2","animal3","animal4","animal5"],["notFound"]]


    var actorsKeywords = ["actor", "movie", "hero", "film"]
    var flowersKeywords = ["food", "grocery", "dish", "tasty"]
    var animalsKeywords = ["animal", "wildlife", "mammal", "zoo"]

    var topicsArray = [
        [
            "Christopher Robert Evans (born June 13, 1981) is an American actor. He began his career with roles in television series such as Opposite Sex in 2000. Following appearances in several teen films, including 2001's Not Another Teen Movie, he gained attention for his portrayal of Marvel Comics character the Human Torch in Fantastic Four (2005) and Fantastic Four: Rise of the Silver Surfer (2007). ",
            
            "John Gilbert (born John Cecil Pringle; July 10, 1897 – January 9, 1936) was an American actor, screenwriter and director. He rose to fame during the silent era and became a popular leading man known as The Great Lover. His breakthrough came in 1925 with his starring roles in The Merry Widow and The Big Parade.",
            
            "Katie Chonacas is an American actress. Chonacas was born in Detroit, Michigan. After moving to Los Angeles in 2002 she landed roles on television series including CSI: NY, It's Always Sunny in Philadelphia, Cold Case and CSI: Crime Scene Investigation. She had supporting roles in Major Movie Star as Amber, Thick as Thieves as June, and Bad Lieutenant: Port of Call New Orleans as Tina.",
            
           
            "Robert Douglas Thomas Pattinson[2][3] (born 13 May 1986) is an English actor. Known for starring in both big-budget and independent films, Pattinson has ranked among the world's highest-paid actors. In 2010, Time magazine named him one of the 100 most influential people in the world, and he was featured in the Forbes Celebrity 100 list. After starting to act in a London theatre club at age 15.",
            "Thomas Cruise Mapother IV (born July 3, 1962), known professionally as Tom Cruise, is an American actor. One of the world's highest-paid actors,[1] he has received various accolades, including an Honorary Palme d'Or and three Golden Globe Awards, in addition to nominations for four Academy Awards. His films have grossed over $4 billion in North America and over $11.5 billion worldwide."
        ],
        [
            "Foods Hamburger, a food consisting of one or more cooked beef patties, placed inside a sliced bread roll or bun roll. Cheeseburger, a hamburger with added cheese(s) Ground beef, minced beef used to make hamburgers Patty, a portion of ground meat, often round, used to make burgers",
            
            "Fried chicken, also known as Southern fried chicken, is a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried. The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat. ",
            "A burrito bowl is a popular dish in Mexican and Tex-Mex cuisine. It's essentially a deconstructed burrito, where the ingredients that would typically be rolled into a tortilla to make a burrito are instead served in a bowl. A typical burrito bowl includes: Rice: Often, you'll find a base layer of either white or brown rice. Protein: You can choose from options like grilled chicken, steak.",
            "A croissant is a popular French pastry known for its flaky and buttery texture. It is typically made from a laminated dough, which is a mixture of butter and yeast-leavened dough. The dough is rolled out, folded, and then rolled out again multiple times, creating many thin layers of dough separated by butter. This process is what gives the croissant its characteristic layers and flakiness.",
            "Pizza is a popular and widely recognized Italian dish that consists of a round, flat bread base topped with various ingredients and baked in an oven. The basic elements of a traditional pizza include dough sauce and cheese."],
        [
            "Deer typically refers to a family of ruminant mammals belonging to the family Cervidae. They are characterized by their slender bodies, cloven hooves, and branched antlers (in most, but not all, species), which are typically found on males. Deer are herbivores and primarily feed on plants such as grass, leaves, and twigs.",
            "The lion (Panthera leo) is a majestic and formidable carnivorous mammal, instantly recognizable by its golden-brown coat and, in the case of males, their distinctive manes, which can range from blond to black. Native to sub-Saharan Africa, lions have a rich history as the kings and queens of the animal kingdom. ",
            "Pandas, often referred to as giant pandas, are one of the most beloved and iconic animals in the world. These large, distinctive bears are known for their black and white fur and gentle demeanor. Here is some key information about pandas: Pandas are native to China and are typically found in mountainous regions, particularly in bamboo forests. ",
            "Squirrels are small to medium-sized rodents that belong to the family Sciuridae. They are known for their distinctive appearance, bushy tails, and their remarkable ability to climb trees and scurry through branches with agility. Here's some key information about squirrels: Squirrels come in various species, but the two most common types are the tree squirrel.",
            
            "Zebras are African equids known for their distinctive black and white stripes. They are closely related to horses and donkeys and are primarily found in various regions of Africa. "
        ]
    ]

    var currentTopic = 0
    
    func buttonsDisable() -> Void {
        nextButton.isHidden = false
        previousButton.isHidden = false
        resetButton.isHidden = false
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
       
        topicInfoText.isHidden = false;
        if(actorsKeywords.contains(searchTextField.text!)){
            topic = 0
            imageNo = 0
            buttonsDisable()
        }
        else if(flowersKeywords.contains(searchTextField.text!)){
            topic = 1
            imageNo = 0
            buttonsDisable()
        }
        else if(animalsKeywords.contains(searchTextField.text!)){
            topic = 2
            imageNo = 0;
            buttonsDisable()
        }
        else{
            topic = -1
            resultImage.image = UIImage(named: arr[3][0])
            topicInfoText.text = "Topic is not found for the given keyword."
            resetButton.isHidden = true
            nextButton.isHidden = true
            previousButton.isHidden = true
        }
        
        if(topic != -1)
        {
            previousButton.isEnabled = false
            nextButton.isEnabled = true
            count = arr[topic].count
            resultImage.image = UIImage(named: arr[topic][0])
            topicInfoText.text = topicsArray[topic][0]
        }
    }
    
    
    @IBAction func ShowNextImagesBtn(_ sender: UIButton) {
        previousButton.isEnabled = true
        imageNo += 1
        resultImage.image = UIImage(named: arr[topic][imageNo])
        topicInfoText.text = topicsArray[topic][imageNo]
        if(imageNo == count-1){
            nextButton.isEnabled = false
        }
    }
    
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        nextButton.isEnabled = true;
        imageNo -= 1
        resultImage.image = UIImage(named: arr[topic][imageNo])
        topicInfoText.text = topicsArray[topic][imageNo]
        if(imageNo == 0){
                    previousButton.isEnabled = false
            }
}
    
   
    @IBAction func searchTextChanges(_ sender: UITextField) {
        if(searchTextField.hasText){
                    searchButton.isEnabled = true
                }
                else{
                    searchButton.isEnabled = false
                }
    }
    
    
    @IBAction func ResetBtn(_ sender: UIButton) {
         nextButton.isHidden = true
         previousButton.isHidden = true
         resetButton.isHidden = true
         searchTextField.text = ""
         searchButton.isEnabled = false
         topicInfoText.text = ""
         resultImage.image = UIImage(named: "welcome")
    }
}
