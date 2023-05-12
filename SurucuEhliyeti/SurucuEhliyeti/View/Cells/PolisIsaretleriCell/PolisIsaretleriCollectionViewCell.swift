//
//  PolisIsaretleriCollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 18.04.2023.
//

import UIKit

class PolisIsaretleriCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var polisIsaretleriImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func seUpCell(polisIsaret: PolisIsaret){

        self.polisIsaretleriImageView.loadImageUsingCacheWithUrlString(urlString: polisIsaret.polisIsaretImage)
    }
    
}
