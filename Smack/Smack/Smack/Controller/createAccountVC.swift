//
//  createAccountVC.swift
//  Smack
//
//  Created by Alex Law on 2018-01-03.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

class createAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    

}
