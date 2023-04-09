//
//  KitaplarViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.02.2023.
//

import UIKit


class DersNotlari: UIViewController {
    
    private let trafikIsaretleriButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Trafik İşaretleri", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(trafikIsaretleriButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let polisIsaretleriButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Polis İşaretleri", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(polisIsaretleriButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let AGPIsaretleriButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Araç Gösterge Paneli İşaretleri", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(AGPIButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let ilkYardımButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("İlk Yardım", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(ilkYardımButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let levhalarButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Levhalar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(levhalarButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let TKVCBButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Trafik Kuralları Ve Çevre Bilgisi", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(TKVCBButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let trafikAdabiButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Trafik Adabı", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(trafikAdabiButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let aracTeknigiButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Araç Tekniği", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(aracTeknigiButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    private let sinavHakkindaButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sınav Hakkında", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.addTarget(Any?.self, action: #selector(sinavHakkindaButtonClicked(_ : )), for: .touchUpInside)
        return button
    }()
    
    
    @objc func trafikIsaretleriButtonClicked(_ : UIButton){
        print("Trafik işarekleri button tiklandi.")
        
        let trafikİsaretleriVC = TrafikIsaretleriViewController()
        navigationController?.pushViewController(trafikİsaretleriVC, animated: true)
    }
    
    @objc func polisIsaretleriButtonClicked(_ : UIButton){
        print("Polis işarekleri button tiklandi.")
        
        let polisIsaretleriVC = PolisIsaretleriViewController()
        navigationController?.pushViewController(polisIsaretleriVC, animated: true)
    }
    
    @objc func AGPIButtonClicked(_ : UIButton){
        print("AGPI button tiklandi.")
    }
    
    @objc func ilkYardımButtonClicked(_ : UIButton){
        print("İlk Yardım Button Tiklandi.")
    }
    
    @objc func levhalarButtonClicked(_ : UIButton){
        print("Levhalar button tiklandi.")
    }
    
    @objc func TKVCBButtonClicked(_ : UIButton){
        print("TKVCB Button Tiklandi.")
    }
    @objc func trafikAdabiButtonClicked(_ : UIButton){
        print("Trafik Adabi Button Tiklandi.")
    }
    
    @objc func aracTeknigiButtonClicked(_ : UIButton){
        print("Araç Tekniği Button Tiklandi.")
    }
    
    @objc func sinavHakkindaButtonClicked(_ : UIButton){
        print("Sınav Hakkında Button Tiklandi.")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(trafikIsaretleriButton)
        view.addSubview(polisIsaretleriButton)
        view.addSubview(AGPIsaretleriButton)
        view.addSubview(ilkYardımButton)
        view.addSubview(levhalarButton)
        view.addSubview(TKVCBButton)
        view.addSubview(trafikAdabiButton)
        view.addSubview(aracTeknigiButton)
        view.addSubview(sinavHakkindaButton)

        
        applyConstraints()
        
        trafikIsaretleriButton.frame = view.bounds
        polisIsaretleriButton.frame = view.bounds
        AGPIsaretleriButton.frame = view.bounds
        ilkYardımButton.frame = view.bounds
        levhalarButton.frame = view.bounds
        TKVCBButton.frame = view.bounds
        trafikAdabiButton.frame = view.bounds
        aracTeknigiButton.frame = view.bounds
        sinavHakkindaButton.frame = view.bounds

        
    }
    
    private func applyConstraints() {
        
        let trafikIsaretleriButtonConstraints = [
            trafikIsaretleriButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            trafikIsaretleriButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            trafikIsaretleriButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            trafikIsaretleriButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let polisIsaretleriButtonConstraints = [
            polisIsaretleriButton.topAnchor.constraint(equalTo: trafikIsaretleriButton.topAnchor, constant: 70),
            polisIsaretleriButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            polisIsaretleriButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            polisIsaretleriButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let AGPIButtonConstraints = [
            AGPIsaretleriButton.topAnchor.constraint(equalTo: polisIsaretleriButton.topAnchor, constant: 70),
            AGPIsaretleriButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            AGPIsaretleriButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            AGPIsaretleriButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let ilkYardımButtonConstraints = [
            ilkYardımButton.topAnchor.constraint(equalTo: AGPIsaretleriButton.topAnchor, constant: 70),
            ilkYardımButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ilkYardımButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            ilkYardımButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let levhalarButtonConstraints = [
            levhalarButton.topAnchor.constraint(equalTo: ilkYardımButton.topAnchor, constant: 70),
            levhalarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            levhalarButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            levhalarButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let TKVCBButtonConstraints = [
            TKVCBButton.topAnchor.constraint(equalTo: levhalarButton.topAnchor, constant: 70),
            TKVCBButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            TKVCBButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            TKVCBButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let trafikAdabiButtonConstraints = [
            trafikAdabiButton.topAnchor.constraint(equalTo: TKVCBButton.topAnchor, constant: 70),
            trafikAdabiButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            trafikAdabiButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            trafikAdabiButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let aracTeknigiButtonConstraints = [
            aracTeknigiButton.topAnchor.constraint(equalTo: trafikAdabiButton.topAnchor, constant: 70),
            aracTeknigiButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            aracTeknigiButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            aracTeknigiButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let sinavHakkindaButtonConstraints = [
            sinavHakkindaButton.topAnchor.constraint(equalTo: aracTeknigiButton.topAnchor, constant: 70),
            sinavHakkindaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sinavHakkindaButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            sinavHakkindaButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        
        
        NSLayoutConstraint.activate(trafikIsaretleriButtonConstraints)
        NSLayoutConstraint.activate(polisIsaretleriButtonConstraints)
        NSLayoutConstraint.activate(AGPIButtonConstraints)
        NSLayoutConstraint.activate(ilkYardımButtonConstraints)
        NSLayoutConstraint.activate(levhalarButtonConstraints)
        NSLayoutConstraint.activate(TKVCBButtonConstraints)
        NSLayoutConstraint.activate(trafikAdabiButtonConstraints)
        NSLayoutConstraint.activate(aracTeknigiButtonConstraints)
        NSLayoutConstraint.activate(sinavHakkindaButtonConstraints)

    }
    
}
