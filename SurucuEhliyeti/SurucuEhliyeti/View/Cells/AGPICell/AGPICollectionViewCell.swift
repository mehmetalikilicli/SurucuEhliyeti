//
//  AGPICollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 13.04.2023.
//

import UIKit

class AGPICollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var AGPIImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUpCell(aracGostergeIsaret: AracGostergeIsaret){
        self.AGPIImageView.image = UIImage(named: "\(aracGostergeIsaret.aracGostergeImage)")
        print(aracGostergeIsaret.aracGostergeImage)
    }
}
