//
//  ChannelVC.swift
//  Smack
//
//  Created by Alex Law on 2018-01-03.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // customizes how much the VC slides out
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

  

}
