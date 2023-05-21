//
//  LevhalarCollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 21.05.2023.
//

import UIKit

class LevhalarCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var LevhalarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUpCell(levha: Levha){
                                
        self.LevhalarImageView.loadImageUsingCacheWithUrlString(urlString: levha.levhaImage)

    }

}
