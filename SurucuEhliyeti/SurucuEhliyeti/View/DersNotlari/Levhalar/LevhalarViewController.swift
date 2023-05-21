//
//  LevhalarViewController.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 21.05.2023.
//

import UIKit
import Firebase

final class LevhalarViewController: UIViewController {
    
    //MARK: Properties
    var isPopupOpen = false
    var popUp: PopUp!
    var LevhaVeri = [Levha]()

    //MARK: Outlets
    @IBOutlet weak var LevhalarCollectionView: UICollectionView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        getLevhaData()
        configureCollectionView()

    }
    
    //MARK: Methods
    private func configureCollectionView(){
        LevhalarCollectionView.dataSource = self
        LevhalarCollectionView.delegate = self
        let nibName = UINib(nibName: "LevhalarCollectionViewCell", bundle: nil)
        self.LevhalarCollectionView.register(nibName, forCellWithReuseIdentifier: "LevhalarCollectionViewCell")
    }
    
    private func getLevhaData(){
        let firestoreDatabase = Firestore.firestore()
        
        firestoreDatabase.collection("LevhalarDatas").order(by: "id", descending: false).addSnapshotListener { snapshot, error in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                if snapshot?.isEmpty != true && snapshot != nil {
                    
                    for document in snapshot!.documents {
                        if let lImage = document.get("lImage") as? String{
                            if let lText = document.get("lText") as? String{
                                if let id = document.get("id") as? Int{
                                    var firebaseL = Levha(id: id, levhaImage: lImage, levha: lText)
                                    self.LevhaVeri.append(firebaseL)
                                }
                            }
                        }
                    }
                    self.LevhalarCollectionView.reloadData()
                }
            }
        }
    }

}

//MARK: Extensions
extension LevhalarViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LevhaVeri.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LevhalarCollectionViewCell", for: indexPath) as! LevhalarCollectionViewCell
        
        cell.setUpCell(levha: LevhaVeri[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.popUp = PopUp(frame: self.view.frame)
        self.popUp.setUpUI(image: LevhaVeri[indexPath.row].levhaImage, label: LevhaVeri[indexPath.row].levha)
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

extension LevhalarViewController: UICollectionViewDelegateFlowLayout{
    
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
