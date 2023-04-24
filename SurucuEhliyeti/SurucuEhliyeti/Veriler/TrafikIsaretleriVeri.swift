//
//  TrafikIsaretleriVeri.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 24.04.2023.
//

import Foundation


struct TrafikIsaret {
    var id: Int
    var trafikIsaretImage : String
    var trafikIsaret : String
}

class TrafikIsaretleriVeriler {
    static let shared = TrafikIsaretleriVeriler()
    
    func getTrafikIsaretleriVeriler() -> [TrafikIsaret] {
        
        var trafikIsaretleriVeriler : [TrafikIsaret] = [
            TrafikIsaret(id: 1, trafikIsaretImage: "onSisLamba", trafikIsaret: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "arkaSisLamba", trafikIsaret: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "farkSeviyeKontrol", trafikIsaret: "Fark seviye kontrol sistem arızası."),
            TrafikIsaret(id: 1, trafikIsaretImage: "adaptifIsikSistemi", trafikIsaret: "Adaptif ışık sistemi uyarı ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "onSisLamba", trafikIsaret: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "arkaSisLamba", trafikIsaret: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "farkSeviyeKontrol", trafikIsaret: "Fark seviye kontrol sistem arızası."),
            TrafikIsaret(id: 1, trafikIsaretImage: "adaptifIsikSistemi", trafikIsaret: "Adaptif ışık sistemi uyarı ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "onSisLamba", trafikIsaret: "Ön sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "arkaSisLamba", trafikIsaret: "Arka sis lambalarınızın açık olduğunu gösteren ikaz ışığıdır."),
            TrafikIsaret(id: 1, trafikIsaretImage: "farkSeviyeKontrol", trafikIsaret: "Fark seviye kontrol sistem arızası."),
            TrafikIsaret(id: 1, trafikIsaretImage: "adaptifIsikSistemi", trafikIsaret: "Adaptif ışık sistemi uyarı ışığıdır."),
        ]
        return trafikIsaretleriVeriler
    }
}
