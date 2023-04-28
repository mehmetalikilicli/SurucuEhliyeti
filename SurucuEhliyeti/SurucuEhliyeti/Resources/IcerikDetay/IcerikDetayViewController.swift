//
//  IcerikDetayViewController.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 27.04.2023.
//

import UIKit
import WebKit

class IcerikDetayViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var icerikDetayBolumIsmi: UILabel!
    @IBOutlet weak var youtubeWebView: WKWebView!
    @IBOutlet weak var icerikDetayBolumAciklamasi: UILabel!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    var bolumDetay : bolum!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure(){
        
        self.icerikDetayBolumIsmi.text = bolumDetay.bolumIsmi
        self.icerikDetayBolumAciklamasi.text = bolumDetay.bolumAciklama
        
        guard let url = URL(string: bolumDetay.bolumUrl) else {
            return
        }
        
        youtubeWebView.load(URLRequest(url: url))
        youtubeWebView.addSubview(activityInd)
        activityInd.startAnimating()
        
        youtubeWebView.navigationDelegate = self
        activityInd.hidesWhenStopped = true
    }
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityInd.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityInd.stopAnimating()
    }
}
