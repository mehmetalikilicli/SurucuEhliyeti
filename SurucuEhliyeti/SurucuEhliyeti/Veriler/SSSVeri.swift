//
//  SSSVeri.swift
//  SurucuEhliyeti
//
//  Created by Ahsen Bahtışen on 2.05.2023.
//

import Foundation

struct sss {
    var soru: String
    var cevap: String
}


class SSSVeriler {
    static let shared = SSSVeriler()
    
    func getSSSVeriler() -> [sss] {
        
        let SSSVeriler : [sss] = [
            sss(soru: "🔻 Ehliyet sınavında kaç soru var?" , cevap: "Trafik ve Çevre Bilgisi 23 soru, Motor  ve Araç Tekniği 9 soru,İlk Yardım Bilgisi 12 soru ve Trafik Adabı 6 soru olmak üzere toplam 50 soru sorulur."),
            sss(soru: "🔻 Ehliyet sınavı puanı nasıl hesaplanır?" , cevap: "Adayların sorulara verdikleri doğru cevap sayıları tespit edilecek, yanlış cevaplar dikkate alınmayacak, tespit edilen doğru cevap sayıları ile 100 üzerinden hesaplama yapılacaktır."),
            sss(soru: "🔻 Ehliyet sınavında 3 yanlış 1 doğruyu görtürüyor mu?" , cevap: "Hayır, yanlış cevaplar doğru cevapları etkilemez."),
            sss(soru: "🔻 Ehliyet teori (yazılı) sınavına ekaç kez girme hakkı var?" , cevap: "Ehliyet sınavında adaylar, en fazla 4 yazılı, 4 uygulama sınavına girme hakkına sahiptir."),
            sss(soru: "🔻 Sınav süresi toplam kaç saattir?" , cevap: "Toplam 60 dakikadır."),
            sss(soru: "🔻 Ehliyet yazılı sınav başarı puan barajı kaçtır?" , cevap: "Başarı puan barajı her ders için 100 üzerinden 70 puandır."),
            sss(soru: "🔻 Ders saatlerinde ne kadar devamsızlık yapabilirim?" , cevap: "Mazeretsiz olarak toplam ders saatlerinin %20'si kadar."),
            sss(soru: "🔻 Sürücü belgemi almadan sürücü sertifikasıyla araç kullnabilir miyim?" , cevap: "Hayır. Trafik Tescil Bürosu'na başvurup sürücü belgenizi aldıktan sonra araç kullanabilirsiniz."),
            sss(soru: "🔻 Yazılı ve direksiyon sınavı nerede yapılıyor?" , cevap: "Yazılı sınav Ankara Eğitim Teknolojileri Genel Müdürlüğü'nün belirlediği okullarda yapılır. Direksiyon sınavı ise, milli Eğitim Müdürlüğü'nün ve Trafik Şube Müddürlüğü'nün belirlediği güzergahta yapılır."),
            sss(soru: "🔻 Sürücü olur raporu nereden alınabilir?" , cevap: "Aile hekiminizden ücretsiz alabilirsiniz."),
            sss(soru: "🔻 Sürücü sertifikamı aldıktan sonra ne kadar süre içerisinde Trafik Tescil Bürosu'na başvurmam gerekiyor?" , cevap: "Sertifikalar alındığı tarihten itibaren 2 yıl geçerlidir."),
            sss(soru: "🔻 Geçen ehliyet sınavına girmedim ama bankayapara yatırmıştım. Bu sınavda da yatırmak zorunda mıyım?" , cevap: "Sınava girilsede girilmese de, her sınav için ayrı ücret yatırılır"),
            
        ]
        return SSSVeriler
    }
}
