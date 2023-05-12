//
//  TrafikIsaretleriCollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 25.04.2023.
//

import UIKit

class TrafikIsaretleriCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var trafikIsaretleriImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
     func setupCell(trafikIsaret: TrafikIsaret){
         
         self.trafikIsaretleriImageView.loadImageUsingCacheWithUrlString(urlString: trafikIsaret.trafikIsaretImage)
 
    }
}
