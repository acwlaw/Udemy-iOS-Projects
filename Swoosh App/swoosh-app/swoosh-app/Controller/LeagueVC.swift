//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Alex Law on 2017-12-21.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    // make it implicitly unwrapped optional - don't run if we dont have a player
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player() // initializes the struct

        // Do any additional setup after loading the view.
    }

    // programatic segue
    @IBAction func onNextTapped(_ sender: Any) {
        // identifier is made
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    // TRY NOT TO HAVE LOGIC INTO IB ACTIONS - create a helper function
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }

    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    // called whenever a segue action is called - where data is passed between VCs
    // only want to go to one type of VC, if have multiple do a series of if/elses
    // will be called before viewDidLoad of the destination VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player // setting the SkillVC player as a leagueVC player
        }
    }

}
