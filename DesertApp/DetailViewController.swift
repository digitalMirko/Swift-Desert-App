//
//  DetailViewController.swift
//  DesertApp
//
//  Created by Mirko Cukich on 9/27/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Image View
    @IBOutlet weak var detailImage: UIImageView!
    // Red Label
    @IBOutlet weak var detailLabel: UILabel!
    // Blue Label
    @IBOutlet weak var moreInfoLabel: UILabel!
    
    // variables equal to an empty string, it will hold info for image, which will populate the Image View
    var imageDetail = ""
    // variables equal to an empty string, it will hold info for desciption label, which will populate the red Label
    var descriptionLabel = ""
    // variables equal to an empty string, it will hold info for more information available, which will populate the blue Label
    var moreInfoDetail = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // when the user clicks on a row we want it to populate
        // with an image, description and more info detail
        // calls up image used - imageDetail is the name of that image
        detailImage.image = UIImage(named: imageDetail)
        // detail label will be equal to the description label
        detailLabel.text = descriptionLabel
        // more info label will be equal to the more info detail
        moreInfoLabel.text = moreInfoDetail
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}