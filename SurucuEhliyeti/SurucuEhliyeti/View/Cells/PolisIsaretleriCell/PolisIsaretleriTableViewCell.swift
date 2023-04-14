//
//  PolisIsaretleriTableViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 13.04.2023.
//

import UIKit

class PolisIsaretleriTableViewCell: UITableViewCell {

    @IBOutlet weak var polisIsaretleriImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpCell(polisIsareti : PolisIsaret){
        polisIsaretleriImageView.image = UIImage(named: "\(polisIsareti.polisIsaretImage)")
    }
}
