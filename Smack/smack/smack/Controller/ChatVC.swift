//
//  ChatVC.swift
//  Smack
//
//  Created by Alex Law on 2018-01-03.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    @IBOutlet weak var menuBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // allows for tap/sliding of the view controller
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }



}
