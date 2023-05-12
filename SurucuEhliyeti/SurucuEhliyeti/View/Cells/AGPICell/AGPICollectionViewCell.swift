//
//  AGPICollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 18.04.2023.
//

import UIKit

class AGPICollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var AGPICellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpCell(aracGostergeIsaret: AracGostergeIsaret){
                                
        self.AGPICellImageView.loadImageUsingCacheWithUrlString(urlString: aracGostergeIsaret.aracGostergeImage)

    }
}
