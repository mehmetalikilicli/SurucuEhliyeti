//
//  IlkYardimVeri.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 26.04.2023.
//

import Foundation

struct bolum {
    var id: Int
    var bolumIsmi : String
}

class ilkYardimBolumler {
    static let shared = ilkYardimBolumler()
    
    func getIlkYardimBolumler() -> [bolum] {
        
        var ilkYardimBolumler : [bolum] = [
            bolum(id: 1, bolumIsmi: "İlk Yardımın Tanımı ve Önemi"),
            bolum(id: 2, bolumIsmi: "İnsan Vücudu"),
            bolum(id: 3, bolumIsmi: "Temel Yaşam Desteği"),
            bolum(id: 4, bolumIsmi: "Suni solunum"),
        ]
        return ilkYardimBolumler
    }
}


class TKVCBBolumler {
    static let shared = TKVCBBolumler()
    
    func getTKVCBBolumler() -> [bolum] {
        
        var TKVCBBolumler : [bolum] = [
            bolum(id: 1, bolumIsmi: "İlk Yardımın Tanımı ve Önemi"),
            bolum(id: 2, bolumIsmi: "İnsan Vücudu"),
            bolum(id: 3, bolumIsmi: "Temel Yaşam Desteği"),
            bolum(id: 4, bolumIsmi: "Suni solunum"),
        ]
        return TKVCBBolumler
    }
}
