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
        popUpImageView.image = UIImage(named: "\(image)")
        popUpLabel.text = label
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
