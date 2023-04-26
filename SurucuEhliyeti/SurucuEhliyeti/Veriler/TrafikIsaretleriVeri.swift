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
            TrafikIsaret(id: 1, trafikIsaretImage: "IsikliIsaretCihazi", trafikIsaret: "Işıklı İşaret Cihazı"),
            TrafikIsaret(id: 2, trafikIsaretImage: "AnaYol-TaliYolKavsagi", trafikIsaret: "Ana Yol-Tali Yol Kavşağı"),
            TrafikIsaret(id: 3, trafikIsaretImage: "AnaYol-TaliYolKavsagi1", trafikIsaret: "Ana Yol-Tali Yol Kavşağı"),
            TrafikIsaret(id: 4, trafikIsaretImage: "AnaYol-TaliYolKavsagi2", trafikIsaret: "Ana Yol-Tali Yol Kavşağı"),
            TrafikIsaret(id: 5, trafikIsaretImage: "AcilanKopru", trafikIsaret: "Açılan Köprü"),
            TrafikIsaret(id: 6, trafikIsaretImage: "AnaYol-TaliYolKavsagi3", trafikIsaret: "Ana Yol-Tali Yol Kavşağı"),
            TrafikIsaret(id: 7, trafikIsaretImage: "AnaYol-TaliYolKavsagi4", trafikIsaret: "Ana Yol-Tali Yol Kavşağı"),
            TrafikIsaret(id: 8, trafikIsaretImage: "BisikletGecebilir", trafikIsaret: "Bisiklet Geçebilir"),
        ]
        return trafikIsaretleriVeriler
    }
}
