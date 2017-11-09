//
//  ViewController.swift
//  CYRK1427141_tp2
//
//  Created by Keven Cyr on 17-11-09.
//  Copyright © 2017 Keven Cyr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(segwayEcranPrincipal), userInfo: nil, repeats: false)
    }

    @objc func segwayEcranPrincipal() {
        self.performSegue(withIdentifier: "ecranPrincipal", sender: self)
    }
}

