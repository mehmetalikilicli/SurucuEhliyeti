//
//  OverLayoutPopUp.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 19.04.2023.
//

import UIKit

class OverLayoutPopUp: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var overLayoutImageView: UIImageView!
    @IBOutlet weak var overLayoutLabe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
   convenience init(overLayoutImageView: String, overLayoutText: String){
       self.init(overLayoutImageView: "", overLayoutText: "")
        
        self.overLayoutLabe.text = overLayoutText
        self.modalPresentationStyle = .overFullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func overLayoutButton(_ sender: Any) {
        hide()
    }
    
    func setupUI(overLayoutImageView: String, overLayoutText: String){
        self.overLayoutImageView.image = UIImage(named: "\(overLayoutImageView)")
        self.overLayoutLabe.text = overLayoutText
    }
    
    func configView(){
        self.view.backgroundColor = .clear
        self.backView.backgroundColor = .black.withAlphaComponent(0.6)
        self.backView.alpha = 0
        self.contentView.alpha = 0
        self.contentView.layer.cornerRadius = 10
    }
    
    func appear(sender: UIViewController){
        sender.present(self,animated: false)
        self.show()
    }
    
    private func show(){
        //UIView.animate(withDuration: 0.3, delay: 0.1) {
            self.backView.alpha = 1
            self.contentView.alpha = 1
        //}
    }
    
    func hide(){
        //UIView.animate(withDuration: 1, delay: 0.0) {
            self.backView.alpha = 0
            self.contentView.alpha = 0
        //} completion: { _ in
            self.dismiss(animated: false)
            self.removeFromParent()
        //}
    }
}
