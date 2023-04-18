//
//  AnaSayfaViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 11.04.2023.
//

import UIKit

class AnaSayfaViewController: UIViewController {

    @IBOutlet weak var cikmisSorularButton: UIButton!
    @IBOutlet weak var ilkYardımCikmisSButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }
    private func setupView(){
        cikmisSorularButton.layer.cornerRadius = 12.0
        ilkYardımCikmisSButton.layer.cornerRadius = 12.0
    }
    
    @IBAction func cikmisSorularButton(_ sender: Any) {
        print("cikmisSorularButton tiklandi.")
    }
    
    @IBAction func ilkYardımCikmisSButton(_ sender: Any) {
        print("ilkYardımCikmisSButton tiklandi.")
    }
}
