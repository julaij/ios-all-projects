//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Julai Dangol on 11/9/23.
//

import UIKit

class Product{
    
    var name: String?
    var category: String?
    
    init(name: String, category: String) {
        self.name = name
        self.category = category
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return the number of products
        return productsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create the cell
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        //populate the cell
        cell.textLabel?.text = productsArray[indexPath.row].name
        
        //Return the cell
        return cell
        
        
    }
    
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var productsArray = [Product]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let product1 = Product(name: "MacBookAir", category: "Laptop")
        let product2 = Product(name: "iphone", category: "Cell Phone")
        let product3 = Product(name: "Airpods", category: "Accessories")
        let product4 = Product(name: "iwatch", category: "Accessories")
        let product5 = Product(name: "Charger", category: "Accessories")
        
        productsArray.append(product1)
        productsArray.append(product2)
        productsArray.append(product3)
        productsArray.append(product4)
        productsArray.append(product5)
        
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if(transition == "productDetails"){
            let destination = segue.destination as! ProductsDescriptionViewController
            destination.product = productsArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            
        }
    }

}

