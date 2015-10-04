//
//  Food.swift
//  DesertApp
//
//  Created by Mirko Cukich on 9/27/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import Foundation

class Food {
    
    //group of variables to hold items in our array
    var imageName = ""      // empty string
    var description = ""    // title label, empty string
    var moreInfo = ""       // more info, empty string
    
    // initiate class
    init(imageName: String, description: String, moreInfo: String) {
        
        self.imageName = imageName      // self.imageName is equal to imageName
        self.description = description  // self.description is equal to description
        self.moreInfo = moreInfo        // self.moreInfo is equal to moreInfo
    }
    
}