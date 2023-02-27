//
//  AnaSayfaViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.02.2023.
//

import UIKit

class AnaSayfaViewController: UIViewController {
    
    private var sonTestleriCozButton : SonTestleriCozButton?
    
    
    
    private let testleriCözButton : UIButton = {
       let button = UIButton()
        button.automaticallyUpdatesConfiguration = false
        button.setTitle("Son Testleri Çöz", for: .normal)
        //button.layer.masksToBounds = true
        return button
    }()
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        sonTestleriCozButton = SonTestleriCozButton(frame: CGRect(x: 0, y: 100, width: view.bounds.width, height: 100))
                
        view.addSubview(sonTestleriCozButton!)
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
