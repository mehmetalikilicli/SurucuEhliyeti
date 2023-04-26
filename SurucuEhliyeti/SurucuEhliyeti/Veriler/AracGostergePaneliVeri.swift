//
//  AracGostergePaneliVeri.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 13.04.2023.
//

import Foundation

struct AracGostergeIsaret {
    var id: Int
    var aracGostergeImage : String
    var aracGosterge : String
}

class AGPIVeriler {
    static let shared = AGPIVeriler()
    
    func getAracGostergePaneliVeriler() -> [AracGostergeIsaret] {
        
        var aracGostergePaneliVeriler : [AracGostergeIsaret] = [
            AracGostergeIsaret(id: 1, aracGostergeImage: "onSisLamba", aracGosterge: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "arkaSisLamba", aracGosterge: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "farkSeviyeKontrol", aracGosterge: "Fark seviye kontrol sistem arızası."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "adaptifIsikSistemi", aracGosterge: "Adaptif ışık sistemi uyarı ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "onSisLamba", aracGosterge: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "arkaSisLamba", aracGosterge: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "farkSeviyeKontrol", aracGosterge: "Fark seviye kontrol sistem arızası."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "adaptifIsikSistemi", aracGosterge: "Adaptif ışık sistemi uyarı ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "onSisLamba", aracGosterge: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "arkaSisLamba", aracGosterge: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "farkSeviyeKontrol", aracGosterge: "Fark seviye kontrol sistem arızası."),
            AracGostergeIsaret(id: 1, aracGostergeImage: "adaptifIsikSistemi", aracGosterge: "Adaptif ışık sistemi uyarı ışığıdır."),
        ]
        return aracGostergePaneliVeriler
    }
}
