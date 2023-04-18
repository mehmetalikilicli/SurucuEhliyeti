//
//  TrafikIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 9.04.2023.
//

import UIKit

class TrafikIsaretleriViewController: UIViewController {
    
    var resimler : [String] = ["adaptifIsikSistemi", "arkaSisLamba", "farkSeviyeKontrol"]

    @IBOutlet weak var trafikIsaretleriCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "TrafikIsaretleriCollectionViewCell", bundle: nil)
        self.trafikIsaretleriCollectionView.register(nibName, forCellWithReuseIdentifier: "TrafikIsaretleriCollectionViewCell")
        
        trafikIsaretleriCollectionView.delegate = self
        trafikIsaretleriCollectionView.dataSource = self

    }
}

extension TrafikIsaretleriViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return resimler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrafikIsaretleriCollectionViewCell", for: indexPath) as! TrafikIsaretleriCollectionViewCell
        cell.TILabel.text = resimler[indexPath.row]
        return cell
    }
}
