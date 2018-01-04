//
//  LoginVC.swift
//  Smack
//
//  Created by Alex Law on 2018-01-03.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        // closes the VC
        dismiss(animated: true, completion: nil)
    }
    
}
