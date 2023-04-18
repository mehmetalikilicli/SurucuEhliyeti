//
//  AGPIViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 18.04.2023.
//

import UIKit

class AGPIViewController: UIViewController {
    
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
        cell.setUpCell(aracGostergeIsaret: AGPIVeri![indexPath.row])
        return cell
    }
    
    
}
