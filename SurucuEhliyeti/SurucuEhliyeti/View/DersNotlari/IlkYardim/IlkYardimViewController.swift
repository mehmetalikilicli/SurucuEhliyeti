//
//  IlkYardimViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 26.04.2023.
//

import UIKit

class IlkYardimViewController: UIViewController {

    //var ilkYardimBolumBasliklari: [ilkYardimBolum]!
    
    
    @IBOutlet weak var ilkYardimLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //var icerikViewController =  IcerikTableViewVC()
        
        //icerikViewController.gelenVirileriAl(ilkYardimBolumBasliklari)
        
        
        
        //ilkYardimLabel.text = ilkYardimVeri
        
    }
    
    private func getIlkYardimBolumVeri(){
        //ilkYardimBolumVeri = ilkYardimBolumBasliklari.shared.getIlkYardimBolumler()
    }
}
