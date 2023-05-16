//
//  IcerikTableViewVC.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 26.04.2023.
//

import UIKit

final class IcerikTableViewVC: UIViewController {
    
    var bolumListesi: [bolum]!
    
    @IBOutlet weak var IcerikTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    private func configureTableView(){
        IcerikTableView.delegate = self
        IcerikTableView.dataSource = self
        IcerikTableView.register(UINib(nibName: "IcerikTableViewCell", bundle: nil), forCellReuseIdentifier: "IcerikTableViewCell")
        IcerikTableView.estimatedRowHeight = UITableView.automaticDimension
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Geri")

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
        let icerikDetayVC = IcerikDetayViewController()
        icerikDetayVC.bolumDetay = bolumListesi[indexPath.row]
        self.navigationController?.pushViewController(icerikDetayVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}
