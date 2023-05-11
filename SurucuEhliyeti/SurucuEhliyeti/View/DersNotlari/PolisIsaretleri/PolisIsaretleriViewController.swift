//
//  PolisIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 9.04.2023.
//

import UIKit
import Firebase

class PolisIsaretleriViewController: UIViewController {
    
    var isPopupOpen = false
    var popUp: PopUp!
    var PolisIsaretleriVeri = [PolisIsaret]()
    
    @IBOutlet weak var polisIsaretleriCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPolisIsaretData()
        
        
        let nibName = UINib(nibName: "PolisIsaretleriCollectionViewCell", bundle: nil)
        self.polisIsaretleriCollectionView.register(nibName, forCellWithReuseIdentifier: "PolisIsaretleriCollectionViewCell")
        
        polisIsaretleriCollectionView.delegate = self
        polisIsaretleriCollectionView.dataSource = self
        
    }
    
    func getPolisIsaretVeriler(){
       let polisIsaretVeriler = PolisIsaretVeriler()
        PolisIsaretleriVeri = polisIsaretVeriler.getAPolisIsaretVeriler()
   }
    
    
    private func getPolisIsaretData(){
        let firestoreDatabase = Firestore.firestore()
        
        firestoreDatabase.collection("PolisIsaretleriDatas").order(by: "id", descending: false).addSnapshotListener { snapshot, error in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                if snapshot?.isEmpty != true && snapshot != nil {
                    
                    for document in snapshot!.documents {
                        if let piImage = document.get("piImage") as? String{
                            if let piText = document.get("piText") as? String{
                                if let id = document.get("id") as? Int{
                                    var firebasePi = PolisIsaret(id: id, polisIsaretImage: piImage, polisIsaret: piText)
                                    self.PolisIsaretleriVeri.append(firebasePi)
                                }
                            }
                            
                        }
                    }
                    self.polisIsaretleriCollectionView.reloadData()
                }
            }
        }
    }
}

extension PolisIsaretleriViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PolisIsaretleriVeri.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PolisIsaretleriCollectionViewCell", for: indexPath) as! PolisIsaretleriCollectionViewCell
        cell.seUpCell(polisIsaret: PolisIsaretleriVeri[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.popUp = PopUp(frame: self.view.frame)
        self.popUp.setUpUI(image: PolisIsaretleriVeri[indexPath.row].polisIsaretImage, label: PolisIsaretleriVeri[indexPath.row].polisIsaret)
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


extension PolisIsaretleriViewController : UICollectionViewDelegateFlowLayout{
    
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
