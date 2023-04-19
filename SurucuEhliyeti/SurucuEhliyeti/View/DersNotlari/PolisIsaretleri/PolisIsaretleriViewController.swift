//
//  PolisIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 9.04.2023.
//

import UIKit

class PolisIsaretleriViewController: UIViewController {
    
    var PolisIsaretleriVeri : [PolisIsaret]?
    
    @IBOutlet weak var polisIsaretleriCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPolisIsaretVeriler()
        
        
        let nibName = UINib(nibName: "PolisIsaretleriCollectionViewCell", bundle: nil)
        self.polisIsaretleriCollectionView.register(nibName, forCellWithReuseIdentifier: "PolisIsaretleriCollectionViewCell")
        
        polisIsaretleriCollectionView.delegate = self
        polisIsaretleriCollectionView.dataSource = self
        
    }
    
    func getPolisIsaretVeriler(){
       let polisIsaretVeriler = PolisIsaretVeriler()
        PolisIsaretleriVeri = polisIsaretVeriler.getAPolisIsaretVeriler()
   }
}

extension PolisIsaretleriViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PolisIsaretleriVeri!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PolisIsaretleriCollectionViewCell", for: indexPath) as! PolisIsaretleriCollectionViewCell
        cell.seUpCell(polisIsaret: PolisIsaretleriVeri![indexPath.row])
        return cell
    }
}
