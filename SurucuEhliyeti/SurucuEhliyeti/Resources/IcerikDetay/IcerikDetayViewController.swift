//
//  IcerikDetayViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.04.2023.
//

import UIKit
import WebKit

class IcerikDetayViewController: UIViewController {
    
    @IBOutlet weak var youtubeWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://www.youtube.com/embed/p65xpknb1HA") else {
            return
        }
        youtubeWebView.load(URLRequest(url: url))
        
        configure()
    }
    
    func configure(){

    }
    
}
