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
            PolisIsaret(id: 1, polisIsaretImage: "onSisLamba", polisIsaret: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            PolisIsaret(id: 1, polisIsaretImage: "arkaSisLamba", polisIsaret: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            PolisIsaret(id: 1, polisIsaretImage: "farkSeviyeKontrol", polisIsaret: "Fark seviye kontrol sistem arızası."),
            PolisIsaret(id: 1, polisIsaretImage: "adaptifIsikSistemi", polisIsaret: "Adaptif ışık sistemi uyarı ışığıdır."),
        ]
        
        return polisIsaretVeriler
    }
}

let   polisIsaretVeriler2 : [PolisIsaret] = [
    PolisIsaret(id: 1, polisIsaretImage: "onSisLamba", polisIsaret: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
    PolisIsaret(id: 1, polisIsaretImage: "arkaSisLamba", polisIsaret: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
    PolisIsaret(id: 1, polisIsaretImage: "farkSeviyeKontrol", polisIsaret: "Fark seviye kontrol sistem arızası."),
    PolisIsaret(id: 1, polisIsaretImage: "adaptifIsikSistemi", polisIsaret: "Adaptif ışık sistemi uyarı ışığıdır."),
]
