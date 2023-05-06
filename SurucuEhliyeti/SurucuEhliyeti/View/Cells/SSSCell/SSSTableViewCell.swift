//
//  SSSTableViewCell.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 3.05.2023.
//

import UIKit

class SSSTableViewCell: UITableViewCell {

    @IBOutlet weak var soruLabel: UILabel!
    @IBOutlet weak var cevapLabel: UILabel!
    @IBOutlet weak var cevapLabelHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func set(content: sss, state: Bool) {
        self.soruLabel.text = content.soru
        let stringHeight = content.cevap.height(width: self.cevapLabel.frame.width, font: .systemFont(ofSize: 17, weight: .regular))
            if state == true {
                self.cevapLabel.text = content.cevap
                // Cevap label padding
                cevapLabelHeight.constant = stringHeight
            } else {
                self.cevapLabel.text = ""
                cevapLabelHeight.constant = 0
            }
            layoutIfNeeded()
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
