//
//  AGPICollectionViewCell.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 18.04.2023.
//

import UIKit

class AGPICollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var AGPICellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpCell(aracGostergeIsaret: AracGostergeIsaret){
        
        AGPICellImageView.image = UIImage(named: "\(aracGostergeIsaret.aracGostergeImage)")
        
        if let url = URL(string: "\(aracGostergeIsaret.aracGostergeImage)") {
            getData(from: url) { data, response, error in
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)
                
                // always update the UI from the main thread
                DispatchQueue.main.async() { [weak self] in
                    self?.AGPICellImageView.image = UIImage(data: data)
                }
            }
        }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
