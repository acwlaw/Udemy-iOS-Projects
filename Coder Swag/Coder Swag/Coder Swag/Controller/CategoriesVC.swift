//
//  ViewController.swift
//  Coder Swag
//
//  Created by Alex Law on 2017-12-27.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

/* dataSource and Delegate are protocalls (abide by a set of rules)
 * allows for loading of data into the tableview
 */
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self         // sets the dataSource/Delegate (as above) to itself
        categoryTable.delegate = self
        
    }
    
    // how many rows in the section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // as? : cast this as a CategoryCell
        // grabs a reusable cell and puts it at the top
        // DONT FORGET TO SET IDENTIFIER AS CATEGORY CELL
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            // gets the correct category at a particular index
            let category = DataService.instance.getCategories()[indexPath.row]
            // update the view with the correct category
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell() // returns an empty cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        // passing category over to the ProductsVC
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            // if not type category then it will crash
            assert(sender as? Category != nil)
            // sender is the category we passed in and making it as a type category
            productsVC.initProducts(category: sender as! Category)
            
        }
    }
}

