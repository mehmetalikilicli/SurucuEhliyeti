//
//  PolisIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 9.04.2023.
//

import UIKit

class PolisIsaretleriViewController: UIViewController {
    
    var popUp: PopUp!
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
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.popUp = PopUp(frame: self.view.frame)
        self.popUp.popUpButton.addTarget(self, action: #selector(popUpButtonTapped), for: .touchUpInside)
        self.popUp.setUpUI(image: PolisIsaretleriVeri![indexPath.row].polisIsaretImage, label: PolisIsaretleriVeri![indexPath.row].polisIsaret)
        self.view.addSubview(popUp)
    }
    
    @objc func popUpButtonTapped(){
        popUp.removeFromSuperview()
    }
}
