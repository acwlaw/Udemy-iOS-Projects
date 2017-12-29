//
//  Category.swift
//  Coder Swag
//
//  Created by Alex Law on 2017-12-29.
//  Copyright © 2017 alex. All rights reserved.
//

import Foundation

struct Category {
    // private for setting, public for retrieving
    private(set) public var title: String
    private(set) public var imageName: String
    
    // constructor
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
