//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Alex Law on 2017-12-21.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // programatic segue
    @IBAction func onNextTapped(_ sender: Any) {
        // identifier is made
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
