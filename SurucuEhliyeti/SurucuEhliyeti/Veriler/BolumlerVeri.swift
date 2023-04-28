//
//  IlkYardimVeri.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 26.04.2023.
//

import Foundation

struct bolum {
    var id: Int
    var bolumUrl: String
    var bolumIsmi : String
    var bolumAciklama: String
}

class ilkYardimBolumler {
    static let shared = ilkYardimBolumler()
    
    func getIlkYardimBolumler() -> [bolum] {
        
        let ilkYardimBolumler : [bolum] = [

            bolum(id: 1,bolumUrl: "https://www.youtube.com/embed/fa2mC0FsKVA", bolumIsmi: "İlkyardımın Tanımı ve Önemi", bolumAciklama: "Bu Sayfa İlkyardımın Tanımı ve Önemi Sayfasıdır."),
            bolum(id: 2, bolumUrl: "https://www.youtube.com/embed/AwWIsWCig0k", bolumIsmi: "İnsan Vücudu", bolumAciklama: "Bu Sayfa İnsan Vücudu Sayfasıdır."),
            /*bolum(id: 3, bolumIsmi: "Temel Yaşam Desteği, Solunum Ve Kapl Durması"),
            bolum(id: 4, bolumIsmi: "Suni Solunum Uygulamaları"),
            bolum(id: 5, bolumIsmi: "Kanamalar Ve Yaralanmalar"),
            bolum(id: 6, bolumIsmi: "Bayılma Ve Komada İlkyardım"),
            bolum(id: 7, bolumIsmi: "Yara Çeşitleri"),
            bolum(id: 8, bolumIsmi: "Kırık, Çıkık Ve Burkulmalar"),
            bolum(id: 9, bolumIsmi: "Bilinç Bozukluklarında İlkyardım"),
            bolum(id: 10, bolumIsmi: "Yaralının Taşımaya Hazırlanması"),
            bolum(id: 11, bolumIsmi: "Yaralıları Taşıma Yöntemleri"),
             */
        ]
        return ilkYardimBolumler
    }
}


class TKVCBBolumler {
    static let shared = TKVCBBolumler()
    
    func getTKVCBBolumler() -> [bolum] {
        
        let TKVCBBolumler : [bolum] = [

           /* bolum(id: 1, bolumIsmi: "Davraış Psikolojisi Ve Temel Karamlar"),
            bolum(id: 2, bolumIsmi: "Trafik Psikolojisi"),
            bolum(id: 3, bolumIsmi: "Trafikle İlgili Kurullar"),
            bolum(id: 4, bolumIsmi: "Trafik Karayolu İle İlgili Tanımlar"),
            bolum(id: 5, bolumIsmi: "Karayolu Yapısının Korunması"),
            bolum(id: 6, bolumIsmi: "Trafik İşaretleri"),
            bolum(id: 7, bolumIsmi: "Işıklı Trafik İşaretleri"),
            bolum(id: 8, bolumIsmi: "Yol Çizgileri"),
            bolum(id: 9, bolumIsmi: "Trafik işaretleri Levhaları"),
            bolum(id: 10, bolumIsmi: "Araç Sürme Yasağı"),
            bolum(id: 11, bolumIsmi: "Araç Kullanma Süreleri"),
            bolum(id: 12, bolumIsmi: "Hız Kuralları"),
            bolum(id: 13, bolumIsmi: "Takip Mesafesi"),
            bolum(id: 14, bolumIsmi: "Öndeki Aracı Sollama Kuralları"),
            bolum(id: 15, bolumIsmi: "Dönüşler Ve Doğrultu Değiştirme"),
            bolum(id: 16, bolumIsmi: "Araçların Manevralarına Dair Kurallar"),
            bolum(id: 17, bolumIsmi: "Sürücülerin Geri Dönüş Manevraları"),
            bolum(id: 18, bolumIsmi: "Kavşaklarda Geçiş Hakkı"),
            bolum(id: 19, bolumIsmi: "Geçiş Üstünlüğüne Sahip Araçlar"),
            bolum(id: 20, bolumIsmi: "Gelen Trafikte Geçiş Kolaylığı Sağlama"),
            bolum(id: 21, bolumIsmi: "Durma Ve Park Etme Kuralları"),
            bolum(id: 22, bolumIsmi: "Bozulan Aracın Çekilmesi"),
            bolum(id: 23, bolumIsmi: "Araçların Işıklandırılması"),
            bolum(id: 24, bolumIsmi: "Tedbirsiz Ve Saygısız Araç Sürme"),
            bolum(id: 25, bolumIsmi: "Ses, Müzik Ve Haberleşme Cihazları"),
            bolum(id: 26, bolumIsmi: "Okul Taşıtları"),
            bolum(id: 27, bolumIsmi: "Araçların Boyutları İle Yüklenmesi"),
            bolum(id: 28, bolumIsmi: "Otoyol Kuralları"),
            bolum(id: 29, bolumIsmi: "Bisiklet Ve Motorsiklet Sürücüleri"),
            bolum(id: 30, bolumIsmi: "Koruyucu Tertibat Kullanımı"),
            bolum(id: 31, bolumIsmi: "Hasta Taşıtları Ve Engelli Yayalar"),
            bolum(id: 32, bolumIsmi: "Yayalar, Hayvan Sürücüleri Ve Yarış Kuralları"),
            bolum(id: 33, bolumIsmi: "Sürücü Belgeleri Ve Verilme Şartları"),
            bolum(id: 34, bolumIsmi: "Araçların Tescil Ve Muayene İşlemleri"),
            bolum(id: 35, bolumIsmi: "Trafik Kazaları"),
            bolum(id: 36, bolumIsmi: "Trafik Kazalarında Asli Kusur Sayılan Haller"),
            bolum(id: 37, bolumIsmi: "Hukuki Sorumluluk Ve Sigorta"),
            bolum(id: 38, bolumIsmi: "Araçlarda Bulundurulması Gereken Techizat"),
            bolum(id: 39, bolumIsmi: "Çevre bilgisi"),
            bolum(id: 40, bolumIsmi: "Harita Bilgisi"),
            */
        ]
        return TKVCBBolumler
    }
}

class trafikAdabiBolumler {
    static let shared = trafikAdabiBolumler()
    
    func gettrafikAdabiBolumler() -> [bolum] {
        
        let trafikAdabiBolumler : [bolum] = [
            /*bolum(id: 1, bolumIsmi: "Trafikte Temel Değerler"),
            bolum(id: 2, bolumIsmi: "Trafikte Empati Ve İletişim"),
            bolum(id: 3, bolumIsmi: "Trafikte Hak İhlalleri"),
            bolum(id: 4, bolumIsmi: "Trafikte Diğerlerinin Sürücü Davranışlarına Etkisi"),
             */
        ]
        return trafikAdabiBolumler
    }
}

class aracTeknigiBolumler {
    static let shared = aracTeknigiBolumler()
    
    func getaracTeknigiBolumler() -> [bolum] {
        
        let aracTeknigiBolumler : [bolum] = [
         /*   bolum(id: 1, bolumIsmi: "Araç Tekniği"),
            bolum(id: 2, bolumIsmi: "Motorun Ve Aracın Sistemleri"),
            bolum(id: 3, bolumIsmi: "Araca Binmeden Önce Yapılması Gerekenler"),
            bolum(id: 4, bolumIsmi: "Aracın Çalıştırılması"),
            bolum(id: 5, bolumIsmi: "Gösterge Sistei Görevi"),
            bolum(id: 6, bolumIsmi: "Aydınlatma Ve İkaz Sistemi"),
            bolum(id: 7, bolumIsmi: "Aktif Ve Pasif Güvenlik Sistemleri"),
            bolum(id: 8, bolumIsmi: "Rodaj Ve Motorun Bakımları"),
            bolum(id: 9, bolumIsmi: "Lastikler"),
            bolum(id: 10, bolumIsmi: "Aracın Durdurulması Gereken Haller"),
            bolum(id: 11, bolumIsmi: "Yakıt Tasarrufu"),
          */
        ]
        return aracTeknigiBolumler
    }
}
