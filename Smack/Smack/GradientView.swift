//
//  GradientView.swift
//  Smack
//
//  Created by Alex Law on 2018-01-03.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    // makes a variable that can be changed in the story board
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1){
        // when we change it, we will need to update our layout
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    // where the layer is actually called
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        // colors that will be included in the gradient (in an array of cgColor)
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        // the direction of the gradient
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        // the size of the gradient
        gradientLayer.frame = self.bounds
        // adding the layer to the UIView layer (0: inserted at first layer)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    

}
