//
//  KitaplarViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 28.02.2023.
//

import UIKit

class myButton : UIView {
    
    private let kitaplarButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Kitaplar", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        //button.addTarget(Any?.self, action: #selector(levhalarButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    @objc func kitaplarButtonClicked(_ : UIButton){
        print("kitaplar button tiklandi")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(kitaplarButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        
            let kitaplarButtonConstraints = [
                kitaplarButton.topAnchor.constraint(equalTo: topAnchor),
                kitaplarButton.trailingAnchor.constraint(equalTo: trailingAnchor),
                kitaplarButton.leadingAnchor.constraint(equalTo: leadingAnchor),
                kitaplarButton.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
            
            NSLayoutConstraint.activate(kitaplarButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        kitaplarButton.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
