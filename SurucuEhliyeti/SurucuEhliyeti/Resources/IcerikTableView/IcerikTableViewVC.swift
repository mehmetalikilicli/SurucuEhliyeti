//
//  IcerikTableViewVC.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 26.04.2023.
//

import UIKit

class IcerikTableViewVC: UIViewController {
    
    var bolumListesi: [bolum]!
    
    @IBOutlet weak var IcerikTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        IcerikTableView.register(UINib(nibName: "IcerikTableViewCell", bundle: nil), forCellReuseIdentifier: "IcerikTableViewCell")

        IcerikTableView.delegate = self
        IcerikTableView.dataSource = self
    }
    
    func bolumleriAl(bolumListesi : [bolum]){
        self.bolumListesi = bolumListesi
    }
}

extension IcerikTableViewVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bolumListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IcerikTableViewCell", for: indexPath) as! IcerikTableViewCell
        cell.icerikBolumLabel.text = bolumListesi[indexPath.row].bolumIsmi
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
