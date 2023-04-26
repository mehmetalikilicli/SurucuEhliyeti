//
//  AGPIViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 18.04.2023.
//

import UIKit

class AGPIViewController: UIViewController {
    
    var popUp: PopUp!
    var AGPIVeri : [AracGostergeIsaret]?

    @IBOutlet weak var AGPICollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getAGPIVeri()
        
        let nibName = UINib(nibName: "AGPICollectionViewCell", bundle: nil)
        self.AGPICollectionView.register(nibName, forCellWithReuseIdentifier: "AGPICollectionViewCell")
        
        AGPICollectionView.dataSource = self
        AGPICollectionView.delegate = self
    }
    
    private func getAGPIVeri(){
        AGPIVeri = AGPIVeriler.shared.getAracGostergePaneliVeriler()
    }

}

extension AGPIViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AGPIVeri!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AGPICollectionViewCell", for: indexPath) as! AGPICollectionViewCell
        cell.AGPICellImageView.image = UIImage(named: "\(AGPIVeri![indexPath.row].aracGostergeImage)")
        //cell.setUpCell(aracGostergeIsaret: AGPIVeri![indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.popUp = PopUp(frame: self.view.frame)
        self.popUp.popUpButton.addTarget(self, action: #selector(popUpButtonTapped), for: .touchUpInside)
        self.popUp.setUpUI(image: AGPIVeri![indexPath.row].aracGostergeImage, label: AGPIVeri![indexPath.row].aracGosterge)
        self.view.addSubview(popUp)
    }
    
    @objc func popUpButtonTapped(){
        popUp.removeFromSuperview()
    }
}
