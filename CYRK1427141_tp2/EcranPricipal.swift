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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pathFichierPlist = Bundle.main.path(forResource: "lesDonnes", ofType: "plist")!
        pub = NSArray(contentsOfFile: pathFichierPlist) as! Array
        info.text = "Il y à \(pub.count) affiches dans la collection"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as! Information
        var selectionnee = monCV.indexPath(for: sender as! UICollectionViewCell)?.row
        destination.descriptionInfo = pub[selectionnee!][2]
        destination.imageInfo = pub[selectionnee!][1]
        destination.titreInfo = pub[selectionnee!][0]
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pub.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var MaPub = "PubCell"
        var row = indexPath.row
        var titre = pub[row][0]
        var affiche = pub[row][1]
        var cellule = collectionView.dequeueReusableCell(withReuseIdentifier: MaPub, for: indexPath) as! PubCellule
        cellule.celluleNom?.text = titre
        cellule.celluleImage?.image = UIImage(named:affiche)
        return cellule
    }
    
}
