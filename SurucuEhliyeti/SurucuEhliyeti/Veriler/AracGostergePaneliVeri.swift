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
            AracGostergeIsaret(id: 1, aracGostergeImage: "agpi1", aracGosterge: "Ön sis lambasının açık olduğu anlamına gelir."),
            AracGostergeIsaret(id: 2, aracGostergeImage: "agpi2", aracGosterge: "Arka sis lambasının açık olduğu anlamına gelir."),
            AracGostergeIsaret(id: 3, aracGostergeImage: "agpi3", aracGosterge: "Sinyalin açık olduğu anlamına gelir. Dörtlüler açıkken yanar. Genellikle acil durumlarda, duraklamalarda ve park ederken kullanılır."),
            AracGostergeIsaret(id: 4, aracGostergeImage: "agpi4", aracGosterge: "Uzun hüzmeli mesafeli farların açık olduğu anlamına gelir."),
            AracGostergeIsaret(id: 5, aracGostergeImage: "agpi5", aracGosterge: "Yeşil ampul. Arabada kısa farlar, sinyaller ve stop lambaları açık ya da arızalı anlamına gelir."),
            AracGostergeIsaret(id: 6, aracGostergeImage: "agpi6", aracGosterge: "Turuncu ampul, park, fren, arka sis, sinyal, iç aydınlatma ve plaka lambaları ile gündüz sürüş farlarından herhangi biri arızalı anlamına gelir."),
            AracGostergeIsaret(id: 7, aracGostergeImage: "agpi7", aracGosterge: "Ampul üzerinde çarpı işareti. Dış fren ampulü arızalı anlamına gelir."),
            AracGostergeIsaret(id: 8, aracGostergeImage: "agpi8", aracGosterge: "Far seviye kontrol sisteminin arızalı olduğu anlamına gelir."),
            AracGostergeIsaret(id: 9, aracGostergeImage: "agpi9", aracGosterge: "Adaptif ışık sistemi uyarı işaretidir. Aracınızın farları yol durumuna göre otomatik olarak uzun ve kısa far açısını kendisi ayarlayacaktır."),
            AracGostergeIsaret(id: 10, aracGostergeImage: "agpi10", aracGosterge: "Kısa hüzmeli far işareti. Kısa hüzmeli farların açık olduğu anlamına gelir."),
            AracGostergeIsaret(id: 11, aracGostergeImage: "agpi11", aracGosterge: "DLR sembolü, araç sisteminin gün ışığında çalışırken kısa hüzmeli farları açtığı anlamına gelir."),
            AracGostergeIsaret(id: 12, aracGostergeImage: "agpi12", aracGosterge: "Bitik akü, akü arızası, şarj dinamosu(alternatör) arızası gibi durumlarda yanan işaret. Motor çalışıyorken akü lambası yanıyorsa sorunlu bir durum vardır."),
        ]
        return aracGostergePaneliVeriler
    }
}
