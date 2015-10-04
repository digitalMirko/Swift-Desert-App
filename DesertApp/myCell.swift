//
//  myCell.swift
//  DesertApp
//
//  Created by Mirko Cukich on 9/27/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {
    
    // Prototype Cells connections: Image View, Label
    // Image View on Prototype Cells layout
    @IBOutlet weak var myImageView: UIImageView!
    
    // Label on Prototype Cells layout
    @IBOutlet weak var myLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
