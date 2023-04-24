//
//  TrafikIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 9.04.2023.
//

import UIKit

class TrafikIsaretleriViewController: UIViewController {
    
    var popUp: PopUp!
    var trafikIsaretVeri: [TrafikIsaret]?
    
    @IBOutlet weak var trafikIsaretleriCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getTrafikIsaretleriVeri()
        
        let nibName = UINib(nibName: "PolisIsaretleriCollectionViewCell", bundle: nil)
        self.trafikIsaretleriCollectionView.register(nibName, forCellWithReuseIdentifier: "PolisIsaretleriCollectionViewCell")
        
        trafikIsaretleriCollectionView.dataSource = self
        trafikIsaretleriCollectionView.delegate = self
        

    }
    
    private func getTrafikIsaretleriVeri(){
        trafikIsaretVeri = TrafikIsaretleriVeriler.shared.getTrafikIsaretleriVeriler()
    }
     
}

extension TrafikIsaretleriViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trafikIsaretVeri!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrafikIsaretleriCollectionViewCell", for: indexPath) as! TrafikIsaretleriCollectionViewCell
        cell.trafikIsaretImageView.image = UIImage(named: "\(trafikIsaretVeri![indexPath.row].trafikIsaretImage)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.popUp = PopUp(frame: self.view.frame)
        self.popUp.popUpButton.addTarget(self, action: #selector(popUpButtonTapped), for: .touchUpInside)
        self.popUp.setUpUI(image: trafikIsaretVeri![indexPath.row].trafikIsaretImage, label: trafikIsaretVeri![indexPath.row].trafikIsaret)
        self.view.addSubview(popUp)
    }
    @objc func popUpButtonTapped(){
        popUp.removeFromSuperview()
    }
}
