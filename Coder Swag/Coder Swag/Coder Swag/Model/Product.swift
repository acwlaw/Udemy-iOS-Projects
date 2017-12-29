//
//  Product.swift
//  Coder Swag
//
//  Created by Alex Law on 2017-12-29.
//  Copyright © 2017 alex. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
