//
//  AGiPICollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 16.04.2023.
//

import UIKit

class AGPICollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setUpCell(aracGostergeIsaret: AracGostergeIsaret){
        printContent(aracGostergeIsaret.aracGostergeImage)
    }
}
