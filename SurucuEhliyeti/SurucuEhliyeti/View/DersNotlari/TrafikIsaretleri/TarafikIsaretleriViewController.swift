//
//  TarafikIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 25.04.2023.
//

import UIKit

final class TarafikIsaretleriViewController: UIViewController {

    //MARK: Properties
    var isPopupOpen = false
    var popUp: PopUp!
    var trafikIsaretleriVeri : [TrafikIsaret]?
    
    //MARK: Outlets
    @IBOutlet weak var trafikIsaretleriCollectionView: UICollectionView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        getTrafikIsaretleriVeriler()
     
    }

    //MARK: Methods
    private func configureTableView(){
        trafikIsaretleriCollectionView.delegate = self
        trafikIsaretleriCollectionView.dataSource = self
        let nibName = UINib(nibName: "TrafikIsaretleriCollectionViewCell", bundle: nil)
        self.trafikIsaretleriCollectionView.register(nibName, forCellWithReuseIdentifier: "TrafikIsaretleriCollectionViewCell")
    }
    
    private func getTrafikIsaretleriVeriler(){
        let trafikIsaretVeriler = TrafikIsaretleriVeriler()
        trafikIsaretleriVeri = trafikIsaretVeriler.getTrafikIsaretleriVeriler()
    }


}

//MARK: Extensions
extension TarafikIsaretleriViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrafikIsaretleriCollectionViewCell", for: indexPath) as! TrafikIsaretleriCollectionViewCell
        cell.setupCell(trafikIsaret: trafikIsaretleriVeri![indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trafikIsaretleriVeri!.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.popUp = PopUp(frame: self.view.frame)
        self.popUp.setUpUI(image: trafikIsaretleriVeri![indexPath.row].trafikIsaretImage, label: trafikIsaretleriVeri![indexPath.row].trafikIsaret)
        self.view.addSubview(popUp)
        isPopupOpen = true
        //self.popUp.popUpButton.addTarget(self, action: #selector(popUpButtonTapped), for: .touchUpInside)
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
    
   /* @objc func popUpButtonTapped() {
        if isPopupOpen {
            popUp.removeFromSuperview()
            isPopupOpen = false
        }
    }*/
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        isPopupOpen = false
    }
}
