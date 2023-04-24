//
//  TrafikIsaretleriCollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 17.04.2023.
//

import UIKit

class TrafikIsaretleriCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var trafikIsaretImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUpCell(trafikIsaret: TrafikIsaret){
        trafikIsaretImageView.image = UIImage(named: "\(trafikIsaret.trafikIsaret)")
    }

}
