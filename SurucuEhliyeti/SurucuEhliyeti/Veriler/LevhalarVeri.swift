//
//  LevhalarVeri.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 21.05.2023.
//

import Foundation

struct Levha {
    var id: Int
    var levhaImage : String
    var levha : String
}


class LevhalarVeriler {
    static let shared = LevhalarVeriler()
    
    func getLEvhalarVeriler() -> [Levha] {
        
        var levhaVeriler : [Levha] = [
            Levha(id: 1, levhaImage: "agpi1", levha: "Motor Sıcaklığı Uyarı Işığı; Motorun soğutma sıvısını aşırı ısıttığını gösterir. Aracınızdaki en önemli üç ikaz lambasından biri (Diğer Yağ Lambası ve Şarj Lambası). Aracınızın gösterge panelinde bu kırmızı lambayı gördüğünüzde aracınızı en kısa sürede durdurmalı ve motorun uygun sıcaklığa soğumasını beklemelisiniz. Arabanız soğuk olsa bile bu durumda devam etmeniz önerilmez. Aracınızı en yakın servise götürmeniz tavsiye edilir. Bu lamba yanıkken aracınızı sürmeye devam ederseniz aracınızın motoruna maddi açıdan büyük zararlar verebilirsiniz.")

        ]
        return levhaVeriler
    }

}
