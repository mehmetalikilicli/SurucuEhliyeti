//
//  PolisIsaretleriViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 9.04.2023.
//

import UIKit

class PolisIsaretleriViewController: UIViewController {
    
    var polisIsaretListe : [PolisIsaret]?


    @IBOutlet weak var polisIsaretTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        polisIsaretTableView.register(PolisIsaretleriTableViewCell.self, forCellReuseIdentifier: "PolisIsaretleriTableViewCell")

        
        polisIsaretTableView.delegate = self
        polisIsaretTableView.dataSource = self
        
    }
    
    func getPolisIsaretVeriler(){
       let polisIsaretVeriler = PolisIsaretVeriler()
        polisIsaretListe = polisIsaretVeriler.getAPolisIsaretVeriler()
   }
}

extension PolisIsaretleriViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return polisIsaretVeriler2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PolisIsaretleriTableViewCell", for: indexPath) as! PolisIsaretleriTableViewCell
        cell.setUpCell(polisIsareti: polisIsaretVeriler2[indexPath.row])
        return cell
    }
}

