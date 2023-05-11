//
//  PopUp.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 24.04.2023.
//

import UIKit

class PopUp: UIView {
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var popUpImageView: UIImageView!
    @IBOutlet weak var popUpButton: UIButton!
    @IBOutlet weak var popUpLabel: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        popUpView.layer.cornerRadius = 20
        popUpButton.layer.cornerRadius = 20
    }
    
    func setUpUI(image: String, label: String){
        
        if let url = URL(string: "\(image)") {
            getData(from: url) { data, response, error in
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)
                
                // always update the UI from the main thread
                DispatchQueue.main.async() { [weak self] in
                    self?.popUpImageView.image = UIImage(data: data)
                }
            }
        }
        popUpLabel.text = label
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func xibSetup(frame: CGRect){
        let view = loadXib()
        view.frame = frame
        addSubview(view)
    }
    func loadXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "PopUp", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        return view!
    }
}
