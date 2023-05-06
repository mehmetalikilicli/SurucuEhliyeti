//
//  PolisIsaretleriVeri.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 13.04.2023.
//

import Foundation


struct PolisIsaret {
    var id: Int
    var polisIsaretImage : String
    var polisIsaret : String
}

class PolisIsaretVeriler {
    static let shared = PolisIsaretVeriler()
    
    func getAPolisIsaretVeriler() -> [PolisIsaret] {
        
        var polisIsaretVeriler : [PolisIsaret] = [
            PolisIsaret(id: 1, polisIsaretImage: "durdurma", polisIsaret: "Solda ve sağda araç durdurma işareti"),
            PolisIsaret(id: 2, polisIsaretImage: "durGec", polisIsaret: "Trafik görevlisinin önünde ve arkasında kalan araçlar durup beklemeli, kol ve omuz istikametindeki araçlar geçmelidir."),
            PolisIsaret(id: 3, polisIsaretImage: "geceDur", polisIsaret: "Gece dur."),
            PolisIsaret(id: 4, polisIsaretImage: "geceGec", polisIsaret: "Gece geç."),
            PolisIsaret(id: 5, polisIsaretImage: "geceYonBelirtme", polisIsaret: "Gece yön belirtme."),
            PolisIsaret(id: 6, polisIsaretImage: "gunduzYonBelirtme", polisIsaret: "Gündüz yön belirtme"),
            PolisIsaret(id: 7, polisIsaretImage: "herkesDursun", polisIsaret: "Bütün yönlere dur işareti."),
            PolisIsaret(id: 8, polisIsaretImage: "hizlandirma", polisIsaret: "Trafiği hızlandırma işareti."),
            PolisIsaret(id: 9, polisIsaretImage: "yavaslatma", polisIsaret: "Trafiği yavaşlatma işareti."),
        ]
        return polisIsaretVeriler
    }
}
