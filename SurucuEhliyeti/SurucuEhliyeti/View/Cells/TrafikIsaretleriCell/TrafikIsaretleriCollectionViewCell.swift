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
        trafikIsaretleriImageView.image = UIImage(named: "\(trafikIsaret.trafikIsaretImage)")
         
         if let url = URL(string: "\(trafikIsaret.trafikIsaretImage)") {
             getData(from: url) { data, response, error in
                 guard let data = data, error == nil else { return }
                 print(response?.suggestedFilename ?? url.lastPathComponent)
                 
                 // always update the UI from the main thread
                 DispatchQueue.main.async() { [weak self] in
                     self?.trafikIsaretleriImageView.image = UIImage(data: data)
                 }
             }
         }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }

}
