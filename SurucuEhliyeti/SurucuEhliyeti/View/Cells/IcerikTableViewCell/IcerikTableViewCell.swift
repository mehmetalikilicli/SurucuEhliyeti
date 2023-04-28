//
//  IcerikTableViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 26.04.2023.
//

import UIKit

final class IcerikTableViewCell: UITableViewCell {

    @IBOutlet weak var icerikBolumLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
