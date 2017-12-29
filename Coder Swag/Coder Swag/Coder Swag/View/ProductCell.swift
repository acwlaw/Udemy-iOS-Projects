//
//  ProductCell.swift
//  Coder Swag
//
//  Created by Alex Law on 2017-12-29.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productTitle.text = product.title
        productPrice.text = product.price
        productImage.image = UIImage(named: product.imageName)
    }
}
