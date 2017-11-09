//
//  EcranPricipal.swift
//  CYRK1427141_tp2
//
//  Created by Keven Cyr on 17-11-09.
//  Copyright © 2017 Keven Cyr. All rights reserved.
//

import UIKit

class EcranPrincipal: UIViewController, UICollectionViewDataSource {
    var pub:Array<Array<String>> = []
    
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var monCV: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pub.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var MaPub = "pubCell"
        var row = indexPath.row
        var cellule = collectionView.dequeueReusableCell(withReuseIdentifier: MaPub, for: indexPath) as! PubCellule
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pathFichierPlist = Bundle.main.path(forResource: "BD", ofType: "plist")!
        pub = NSArray(contentsOfFile: pathFichierPlist) as! Array
        info.text = "Il y à \(pub.count) affiches dans la collection"
    }
    
}
