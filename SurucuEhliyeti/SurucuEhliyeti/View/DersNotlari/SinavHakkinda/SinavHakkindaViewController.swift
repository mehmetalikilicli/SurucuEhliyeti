//
//  SinavHakkindaViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 1.05.2023.
//

import UIKit

class SinavHakkindaViewController: UIViewController {
    
    //MARK: Outlets


    @IBOutlet weak var sinavHakkindaTableView: UITableView!
    //MARK: Properties
    var itemsArray : [sss]!
    var isExpanded = [Bool]()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        getSinavHakkindaVeriler()
        setCellState()
        
    }
    
    //MARK: Methods
    private func configureTableView(){
        sinavHakkindaTableView.delegate = self
        sinavHakkindaTableView.dataSource = self
        sinavHakkindaTableView.estimatedRowHeight = 60
        sinavHakkindaTableView.rowHeight = UITableView.automaticDimension
        sinavHakkindaTableView.register(UINib(nibName: "SSSTableViewCell", bundle: nil), forCellReuseIdentifier: "tableviewcellid")
        sinavHakkindaTableView.separatorStyle = .none
    }
    
    private func getSinavHakkindaVeriler() {
        let sinavHakkinda = SinavHakkindaVeriler()
        itemsArray = sinavHakkinda.getSinavHakkindaVeriler()
        }
    
    private func setCellState() {
        for _ in 0..<itemsArray.count {
                isExpanded.append(false)
            }
        }


    // tablo görünümü verilerini yeniden yükleyin
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            sinavHakkindaTableView.reloadData()
        }

}

//MARK: Extensions
extension SinavHakkindaViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableviewcellid", for: indexPath) as? SSSTableViewCell else { return UITableViewCell() }
        
        cell.set(content: self.itemsArray[indexPath.row], state: isExpanded[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? SSSTableViewCell else { return }
        cell.cevapLabel.text = self.itemsArray[indexPath.row].cevap
        
        if isExpanded[indexPath.row] == true{
            
            // Cevap labeli gizle
            cell.cevapLabelHeight.constant = 0
            
            //hücre kapandı
            isExpanded[indexPath.row] = false
        }else{

            let stringHeight = self.itemsArray[indexPath.row].cevap.height(width: cell.cevapLabel.frame.width, font: .systemFont(ofSize: 17, weight: .regular))
            
            // Cevap Label GenişletS
            cell.cevapLabelHeight.constant = stringHeight
                    
            // Hücre genişletildi
            isExpanded[indexPath.row] = true
        }
        // Hücreyi animasyonla Genişlet/Daralt (Sayı ne kadar küçükse, hücre o kadar hızlı genişler/daralır)
            UIView.animate(withDuration: 0.3) {
                tableView.beginUpdates()
                cell.layoutIfNeeded()
                tableView.endUpdates()
            }
    }
}
