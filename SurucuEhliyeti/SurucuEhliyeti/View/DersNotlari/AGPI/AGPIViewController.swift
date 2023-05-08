//
//  AGPIViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 18.04.2023.
//

import UIKit

class AGPIViewController: UIViewController {
    
    var isPopupOpen = false
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
        self.popUp.setUpUI(image: AGPIVeri![indexPath.row].aracGostergeImage, label: AGPIVeri![indexPath.row].aracGosterge)
        self.view.addSubview(popUp)
        isPopupOpen = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if isPopupOpen {
            popUp.removeFromSuperview()
            isPopupOpen = false
            sender.isEnabled = false
        }
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        isPopupOpen = false
    }
}

extension AGPIViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let bounds = collectionView.bounds
        let heightVal = self.view.frame.height
        let widthVal = self.view.frame.width
        let cellSize = (heightVal < widthVal) ? bounds.height / 3 : bounds.width / 3
        
        return CGSize(width: cellSize - 10, height: cellSize - 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
}
