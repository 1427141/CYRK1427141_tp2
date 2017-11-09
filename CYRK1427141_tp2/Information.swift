//
//  Information.swift
//  CYRK1427141_tp2
//
//  Created by Keven Cyr on 17-11-09.
//  Copyright © 2017 Keven Cyr. All rights reserved.
//

import UIKit

class Information : UIViewController {
    
    var imageInfo = ""
    var titreInfo = ""
    var descriptionInfo = ""
    
    @IBOutlet weak var imageFond: UIImageView!
    @IBOutlet weak var imageDansFrame: UIImageView!
    @IBOutlet weak var texte: UITextView!
    @IBOutlet weak var titreOeuvre: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageFond.image = UIImage (named : imageInfo)
        imageDansFrame.image = UIImage (named : imageInfo)
        texte.text = descriptionInfo
        titreOeuvre.text = titreInfo
        
    }
}
