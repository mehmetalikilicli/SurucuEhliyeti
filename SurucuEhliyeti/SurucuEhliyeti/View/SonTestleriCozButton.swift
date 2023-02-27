//
//  SonTestleriCozButton.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.02.2023.
//

import UIKit

class SonTestleriCozButton: UIView {
    
    private let sonTestleriCozButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Son Testleri Çöz", for: .normal)
        button.backgroundColor = .green
        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(sonTestleriCozButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        
            let sonTestleriCozButtonConstraints = [
                sonTestleriCozButton.topAnchor.constraint(equalTo: topAnchor),
                sonTestleriCozButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                sonTestleriCozButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
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
