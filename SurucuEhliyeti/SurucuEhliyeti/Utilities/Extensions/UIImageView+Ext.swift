//
//  UIImageView+Ext.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 12.05.2023.
//

import Foundation
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    
    func loadImageUsingCacheWithUrlString(urlString: String) {
        
        self.image = nil
        
        if let cachedImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cachedImage
            return
        }
        
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in

                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)

                DispatchQueue.main.async {
                    if let downloadedImage = UIImage(data: data) {
                        imageCache.setObject(downloadedImage, forKey: urlString as AnyObject)
                        
                        self.image = UIImage(data: data)

                    }
                }
            }.resume()
        }
    }
}
