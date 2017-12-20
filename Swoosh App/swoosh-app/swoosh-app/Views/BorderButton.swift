//
//  BorderButton.swift
//  swoosh-app
//
//  Created by Alex Law on 2017-12-19.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() { // called whenever that view controller is called 
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
