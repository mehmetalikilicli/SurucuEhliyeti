//
//  SonTestleriCozButton.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.02.2023.
//

import UIKit
class SonTestleriCozButton: UIButton {
    
    private let sonTestleriCozButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Son Testleri Çöz", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.titleLabel?.textColor = .black        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(sonTestleriCozButton)
        
        //applyConstraints()
    }
    
    private func applyConstraints() {
        
            let sonTestleriCozButtonConstraints = [
                sonTestleriCozButton.topAnchor.constraint(equalTo: topAnchor,constant: 100),
                sonTestleriCozButton.trailingAnchor.constraint(equalTo: trailingAnchor),
                sonTestleriCozButton.leadingAnchor.constraint(equalTo: leadingAnchor),
                sonTestleriCozButton.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
            
            NSLayoutConstraint.activate(sonTestleriCozButtonConstraints)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        sonTestleriCozButton.frame = bounds
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
