//
//  DersNotlariViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 11.04.2023.
//

import UIKit

class DersNotlariViewController: UIViewController {

    
    
    
    
    
    @IBOutlet weak var trafikIsaretleriButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        trafikIsaretleriButton.layer.cornerRadius = 12
    }
    
    @IBAction func trafikIsaretleriButton(_ sender: Any) {
        print("trafikIsaretleriButton  tiklandi.")
    }
    
    @IBAction func polisIsaretleriButton(_ sender: Any) {
        print("polisIsaretleriButton  tiklandi.")
    }
    
    @IBAction func AGPIButton(_ sender: Any) {
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
