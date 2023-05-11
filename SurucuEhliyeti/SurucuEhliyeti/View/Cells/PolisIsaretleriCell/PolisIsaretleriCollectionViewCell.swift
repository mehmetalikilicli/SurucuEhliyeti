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
        polisIsaretleriImageView.image = UIImage(named: "\(polisIsaret.polisIsaretImage)")
        
        if let url = URL(string: "\(polisIsaret.polisIsaretImage)") {
            getData(from: url) { data, response, error in
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)
                
                // always update the UI from the main thread
                DispatchQueue.main.async() { [weak self] in
                    self?.polisIsaretleriImageView.image = UIImage(data: data)
                }
            }
        }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
