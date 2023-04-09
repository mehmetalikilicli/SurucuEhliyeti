//
//  AnaSayfaViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.02.2023.
//

import UIKit

class AnaSayfaViewController: UIViewController {
        
    private let cikmisSorularButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Çıkmış Sorular", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.titleLabel?.textColor = .black
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        cikmisSorularButton.addTarget(self, action: #selector(cikmisSorularButtonTapped(_ :)), for: .touchUpInside)
                
        view.addSubview(cikmisSorularButton)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
            let cikmisSorularButtonConstraints = [
                cikmisSorularButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
                cikmisSorularButton.widthAnchor.constraint(equalToConstant: (view.bounds.width/2)-40 ),
                cikmisSorularButton.heightAnchor.constraint(equalToConstant: 100),
                cikmisSorularButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20)
            ]
            
            NSLayoutConstraint.activate(cikmisSorularButtonConstraints)
    }
    
    @objc func cikmisSorularButtonTapped(_ : UIButton){
        print("son testleri çöz buton tiklandi")
        
        let testVC = TestViewController()
        navigationController?.pushViewController(testVC, animated: true)
    }
    
}
