//
//  TableViewController.swift
//  DesertApp
//
//  Created by Mirko Cukich on 9/26/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // food array of type food
    var foodArray: [Food] = [Food]() // initialized our empty Food array

    override func viewDidLoad() {
        super.viewDidLoad()
        // Content for our array loading up when the app does, we are initiating from our custom Class called food
        // let foodX = Food(imageName: String, description: String, moreInfo: String)
        // imageName: String = image name in quotes
        // description: String = what is that an image of, in quotes
        // moreInfo: String = my comment in quotes about the image
        let food1 = Food(imageName: "cake.jpg", description: "Chocolate", moreInfo: "There is nothing better than a great chocolate cake.")
        let food2 = Food(imageName: "meringue.jpg", description: "Meringue & Berries", moreInfo: "I really don't like meringue but it's a nice photo.")
        let food3 = Food(imageName: "peaches.jpg", description: "Grilled Peaches", moreInfo: "This would be perfect as a summer time dessert")
        let food4 = Food(imageName: "tiramisu.jpg", description: "Tiramisu", moreInfo: "One of my favorite Italian deserts. Yum.")
        
        // append to the Food array, so we have an array of arrays
        foodArray.append(food1)
        foodArray.append(food2)
        foodArray.append(food3)
        foodArray.append(food4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1 // was 0 made into a 1 since we have 1 section
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodArray.count  // number of rows in section, how many rows to populate, was 0
    }
// came commented in when we created so we uncommented this function
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // "reuseIdentifier", forIndexPath: indexPath)
        // "reuseIdentifier" = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell
        
        // what ever row i click on will be equal to the foodArray row
        let foodItem = foodArray[indexPath.row]
        
        // accessing image and text's
        cell.myImageView.image = UIImage(named: foodItem.imageName)
        cell.myLabel.text = foodItem.description
        
        return cell
    }
    // added this function for tableView - did select row at index path
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //
        let foodSelected = foodArray[indexPath.row]
        // created this varialbe detailed view controller which is of type detail view controller 
        // so we are allowed to access the variables containted in the DetailViewController
        let detailVC:DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        
        // we've called the variables here from the DetailViewController with what ever has
        // been picked up from the food array, what ever row was selected
        // we need the image name
        detailVC.imageDetail = foodSelected.imageName
        // we need the description
        detailVC.descriptionLabel = foodSelected.description
        // we need the more info
        detailVC.moreInfoDetail = foodSelected.moreInfo
        
        // self.presentViewController(viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?)
        // viewControllerToPresent: UIViewController = detailVC
        // animated: Bool = true
        // completion: (() -> Void)? = nil
        self.presentViewController(detailVC, animated: true, completion: nil)
    }
}
