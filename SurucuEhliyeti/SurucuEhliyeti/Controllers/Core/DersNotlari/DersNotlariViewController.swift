//
//  DersNotlariViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 11.04.2023.
//

import UIKit

class DersNotlariViewController: UIViewController {

    @IBOutlet weak var trafikIsaretleriButton: UIButton!
    @IBOutlet weak var polisIsaretleriButton: UIButton!
    @IBOutlet weak var AGPIButton: UIButton!
    @IBOutlet weak var ilkYardimButton: UIButton!
    @IBOutlet weak var levhalarButton: UIButton!
    @IBOutlet weak var TKVCBButton: UIButton!
    @IBOutlet weak var trafikAdabiButton: UIButton!
    @IBOutlet weak var aracTeknigiButton: UIButton!
    @IBOutlet weak var sinavHakkindaButton: UIButton!
    @IBOutlet weak var sikSorulanSorularButton: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
 
    private func setupView(){
        trafikIsaretleriButton.layer.cornerRadius = 12.0
        polisIsaretleriButton.layer.cornerRadius = 12.0
        AGPIButton.layer.cornerRadius = 12.0
        ilkYardimButton.layer.cornerRadius = 12.0
        levhalarButton.layer.cornerRadius = 12.0
        TKVCBButton.layer.cornerRadius = 12.0
        trafikAdabiButton.layer.cornerRadius = 12.0
        aracTeknigiButton.layer.cornerRadius = 12.0
        sinavHakkindaButton.layer.cornerRadius = 12.0
        sikSorulanSorularButton.layer.cornerRadius = 12.0
        
    }
    @IBAction func trafikIsaretleriButton(_ sender: Any) {
        let trafikIsaretleriVC = TrafikIsaretleriViewController()
        self.navigationController?.pushViewController(trafikIsaretleriVC, animated: true)
        print("trafikIsaretleriButton  tiklandi.")
    }
    
    @IBAction func polisIsaretleriButton(_ sender: Any) {
        let polisIsaretleriVC = PolisIsaretleriViewController()
        self.navigationController?.pushViewController(polisIsaretleriVC, animated: true)
        print("polisIsaretleriButton  tiklandi.")
    }
    
    @IBAction func AGPIButton(_ sender: Any) {
        let AGPIVC = AGPIViewController()
        self.navigationController?.pushViewController(AGPIVC, animated: true)
        print("AGPIButton tiklandi.")
    }
    
    @IBAction func ilkYardimButton(_ sender: Any) {
        print("ilkYardimButton tiklandi.")
    }
    
    @IBAction func levhalarButton(_ sender: Any) {
        print("levhalarButton tiklandi.")
    }
    
    @IBAction func TKVCBButton(_ sender: Any) {
        print("TKVCBButton tiklandi.")
    }
    
    @IBAction func trafikAdabiButton(_ sender: Any) {
        print("trafikAdabiButton tiklandi.")
    }
    
    @IBAction func aracTeknigiButton(_ sender: Any) {
        print("aracTeknigiButton tiklandi.")
    }
    
    @IBAction func sinavHakkindaButton(_ sender: Any) {
        print("sinavHakkindaButton tiklandi.")
    }
    
    @IBAction func sikSorulanSorularButton(_ sender: Any) {
        print("sikSorulanSorularButton tiklandi.")
    }
    
}
