//
//  AGPIViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 13.04.2023.
//

import UIKit

class AGPIViewController: UIViewController {

    @IBOutlet weak var AGPICollectionView: UICollectionView!
    
    var AGPIListe : [AracGostergeIsaret]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("arac gosterge paneli viewcontroller")
        
        getAGPIVeriler()
        
        AGPICollectionView.register(AGPICollectionViewCell.self, forCellWithReuseIdentifier: "AGPICollectionViewCell")
        
        AGPICollectionView.dataSource = self
        AGPICollectionView.delegate = self
        AGPICollectionView.collectionViewLayout = UICollectionViewLayout()
        
        
    }
    
     func getAGPIVeriler(){
        let AGPIVeriler = AGPIVeriler()
        AGPIListe = AGPIVeriler.getAracGostergePaneliVeriler()
        //print("veriler \(AGPIListe)")
    }
    
}

extension AGPIViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AGPIListe!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AGPICollectionViewCell", for: indexPath) as! AGPICollectionViewCell
        //cell.setUpCell(aracGostergeIsaret: AGPIListe![indexPath.row])
        //cell.AGPIImageView.image = UIImage(named: "\(AGPIListe![indexPath.row].aracGostergeImage)")
        print("alsdf")
        return cell
    }
}

extension AGPIViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
    
}

extension AGPIViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(AGPIListe![indexPath.row])
    }
}
