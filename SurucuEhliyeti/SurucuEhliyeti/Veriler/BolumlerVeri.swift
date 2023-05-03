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
            bolum(id: 2, bolumUrl: "https://www.youtube.com/embed/AwWIsWCig0k", bolumIsmi: "Temel Yaşam Desteği, Solunum Ve Kalp Durması", bolumAciklama: "Bu Sayfa İnsan Vücudu Sayfasıdır."),
            bolum(id: 3, bolumUrl: "https://www.youtube.com/embed/pEksX32cjDQ", bolumIsmi: "İnsan Vücudu", bolumAciklama: "Bu Sayfa Temel Yaşam Desteği, Solunum Ve Kalp Durması Sayfasıdır."),
            bolum(id: 4, bolumUrl: "https://www.youtube.com/embed/_QWHrhiOHY4", bolumIsmi: "Suni Solunum Uygulamaları", bolumAciklama: "Bu Sayfa Suni Solunum Uygulamaları Sayfasıdır."),
            bolum(id: 5, bolumUrl: "https://www.youtube.com/embed/DB72wpWMEqk", bolumIsmi: "Kanamalar Ve Yaralanmalar", bolumAciklama: "Bu Sayfa Kanamalar Ve Yaralanmalar Sayfasıdır."),
            bolum(id: 6, bolumUrl: "https://www.youtube.com/embed/bZw9cqpUh7M", bolumIsmi: "Şok, Bayılma Ve Komada İlkyardım", bolumAciklama: "Bu Sayfa Şok, Bayılma Ve Komada İlkyardım Sayfasıdır."),

            bolum(id: 7, bolumUrl: "https://www.youtube.com/embed/ozexMSiBHjU", bolumIsmi: "Yara Çeşitleri", bolumAciklama: "Bu Sayfa Yara Çeşitleri Sayfasıdır."),
            bolum(id: 8, bolumUrl: "https://www.youtube.com/embed/fVAMUhw6ugw", bolumIsmi: "Kırık, Çıkık Ve Burkulmalar", bolumAciklama: "Bu Sayfa Kırık, Çıkık Ve Burkulmalar Sayfasıdır."),
            bolum(id: 9, bolumUrl: "https://www.youtube.com/embed/cB01-h5DIfE", bolumIsmi: "Bilinç Bozukluklarında İlkyardım", bolumAciklama: "Bu Sayfa Bilinç Bozukluklarında İlkyardım Sayfasıdır."),
            bolum(id: 10, bolumUrl: "https://www.youtube.com/embed/W3YZfmFoCHk", bolumIsmi: "Yaralının Taşımaya Hazırlanması Ve Taşıma", bolumAciklama: "Bu Sayfa Yaralının Taşımaya Hazırlanması Ve Taşıma Sayfasıdır."),
            bolum(id: 11, bolumUrl: "https://www.youtube.com/embed/qd317JFKz6M", bolumIsmi: "Yaralıları Taşıma Yöntemleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
        ]
        return ilkYardimBolumler
    }
}


class TKVCBBolumler {
    static let shared = TKVCBBolumler()
    
    func getTKVCBBolumler() -> [bolum] {
        
        let TKVCBBolumler : [bolum] = [
            bolum(id: 1, bolumUrl: "https://www.youtube.com/embed/DUu76nTKiM0", bolumIsmi: "Davranış Psikolojisi Ve Temel Karamlar", bolumAciklama: "Bu Sayfa Davranış Psikolojisi Ve Temel Karamlar Sayfasidir."),
            bolum(id: 2, bolumUrl: "https://www.youtube.com/embed/7iawDZqjmxQ", bolumIsmi: "Trafik Psikolojisi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 3, bolumUrl: "https://www.youtube.com/embed/XzZV2vYwZvk", bolumIsmi: "Trafikle İlgili Kurullar Kuruluşlar Ve Komisyonlar", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 4, bolumUrl: "https://www.youtube.com/embed/ityJzK5mhl8", bolumIsmi: "Trafik Karayolu Ve Araçlarla İlgili Tanımlar", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 5, bolumUrl: "https://www.youtube.com/embed/L2qbovYQH9o", bolumIsmi: "Karayolu Yapısı Ve Trafik işaretlerinin Korunması", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 6, bolumUrl: "https://www.youtube.com/embed/YpEMeGeF0qs", bolumIsmi: "Trafik İşaretleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 7, bolumUrl: "https://www.youtube.com/embed/TWetTNR2UoM", bolumIsmi: "Işıklı Trafik İşaretleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 8, bolumUrl: "https://www.youtube.com/embed/9sgnziBt4jU", bolumIsmi: "Yol Çizgileri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 9, bolumUrl: "https://www.youtube.com/embed/SkzH1ZrYlnA", bolumIsmi: "Trafik işaretleri Levhaları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 10, bolumUrl: "https://www.youtube.com/embed/R4QLdJm6SHs", bolumIsmi: "Araç Sürme Yasağı", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 11, bolumUrl: "https://www.youtube.com/embed/eFzaSxPbXvA", bolumIsmi: "Araç Kullanma Süreleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 12, bolumUrl: "https://www.youtube.com/embed/vw7TBq8qRxw", bolumIsmi: "Hız Kuralları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 13, bolumUrl: "https://www.youtube.com/embed/IyIjWuxnJck", bolumIsmi: "Takip Mesafesi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 14, bolumUrl: "https://www.youtube.com/embed/ZQsCOMv-uJ8", bolumIsmi: "Öndeki Aracı Geçme Ve Sollama Kuralları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 15, bolumUrl: "https://www.youtube.com/embed/wlTbs54_aog", bolumIsmi: "Dönüşler Ve Doğrultu Değiştirme", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 16, bolumUrl: "https://www.youtube.com/embed/UQnthF42WD0", bolumIsmi: "Araçların Manevralarına Dair Kurallar", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 17, bolumUrl: "https://www.youtube.com/embed/UHm91yUMA_s", bolumIsmi: "Sürücülerin Geri Gitme Ve Geri Dönüş Manevraları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 18, bolumUrl: "https://www.youtube.com/embed/M2K7zw6db78", bolumIsmi: "Kavşaklarda Geçiş Hakkı", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 19, bolumUrl: "https://www.youtube.com/embed/Mhw0ueKFlAs", bolumIsmi: "Geçiş Üstünlüğüne Sahip Araçlar Ve Uyulacak Kurallar", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 20, bolumUrl: "https://www.youtube.com/embed/cWIQjtS8DuI", bolumIsmi: "Gelen Trafikle Karşılaşmada Geçiş Kolaylığı Sağlama", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 21, bolumUrl: "https://www.youtube.com/embed/NyZhArQNW5w", bolumIsmi: "Durma Ve Park Etme Kuralları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 22, bolumUrl: "https://www.youtube.com/embed/l-_NJ-PxCRY", bolumIsmi: "Karayollarında Bozulan Aracın Çekilmesi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 23, bolumUrl: "https://www.youtube.com/embed/m0eGvh4ntJ4", bolumIsmi: "Araçların Işıklandırılması Ve Kullanılması", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 24, bolumUrl: "https://www.youtube.com/embed/M6Hzmr2e0ao", bolumIsmi: "Tedbirsiz Ve Saygısız Araç Sürme", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 25, bolumUrl: "https://www.youtube.com/embed/n17L8uO6A_o", bolumIsmi: "Ses, Müzik, Görüntü Ve Haberleşme Cihazları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 26, bolumUrl: "https://www.youtube.com/embed/krSawJoEWCo", bolumIsmi: "Okul Taşıtları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 27, bolumUrl: "https://www.youtube.com/embed/gbCUZFdTdgo", bolumIsmi: "Araçların Boyutları, Ölçü Ve Ağırlıkları İle Yüklenmesi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 28, bolumUrl: "https://www.youtube.com/embed/DR1c2tatwTc", bolumIsmi: "Otoyol Kuralları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 29, bolumUrl: "https://www.youtube.com/embed/wGtZ_XXPA3c", bolumIsmi: "Bisiklet Ve Motorsiklet Sürücüleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 30, bolumUrl: "https://www.youtube.com/embed/tmxqNViWvME", bolumIsmi: "Sürücülerin Ve Yolcuların Koruyucu Tertibat Kullanması", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 31, bolumUrl: "https://www.youtube.com/embed/sQyniG8nmoA", bolumIsmi: "Çocuk, Engelli, Hasta Taşıtları Ve Engelli Yayalar", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 32, bolumUrl: "https://www.youtube.com/embed/peUpOJk94bI", bolumIsmi: "Yayalar, Hayvan Sürücüleri Ve Yarış Kuralları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 33, bolumUrl: "https://www.youtube.com/embed/RUnAnKdDyPk", bolumIsmi: "Sürücü Belgeleri Ve Verilme Şartları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 34, bolumUrl: "https://www.youtube.com/embed/9n4KVhxi0Js", bolumIsmi: "Araçların Tescil Ve Muayene İşlemleri",bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 35, bolumUrl: "https://www.youtube.com/embed/EZOZ2W_hIlQ", bolumIsmi: "Trafik Kazaları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 36, bolumUrl: "https://www.youtube.com/embed/3DD0Z5tGA3E", bolumIsmi: "Trafik Kazalarında Asli Kusur Sayılan Haller", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 37, bolumUrl: "https://www.youtube.com/embed/akkp-HL4HQE", bolumIsmi: "Hukuki Sorumluluk Ve Sigorta", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 38, bolumUrl: "https://www.youtube.com/embed/YuRmFp6lsXo", bolumIsmi: "Araçlarda Bulundurulması Gereken Techizat", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 39, bolumUrl: "https://www.youtube.com/embed/F-2eO_YK5CE", bolumIsmi: "Çevre bilgisi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 40, bolumUrl: "https://www.youtube.com/embed/P4f1hnyJ28A", bolumIsmi: "Harita Bilgisi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            
        ]
        return TKVCBBolumler
    }
}

class trafikAdabiBolumler {
    static let shared = trafikAdabiBolumler()
    
    func gettrafikAdabiBolumler() -> [bolum] {
        
        let trafikAdabiBolumler : [bolum] = [
            
            bolum(id: 1, bolumUrl: "https://www.youtube.com/embed/FT-8UKCQobc", bolumIsmi: "Trafikte Temel Değerler", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 2, bolumUrl: "https://www.youtube.com/embed/avot-YL4LtM", bolumIsmi: "Trafikte Empati Ve İletişim", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 3, bolumUrl: "https://www.youtube.com/embed/Qhhr62S9frk", bolumIsmi: "Trafikte Hak İhlalleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 4, bolumUrl: "https://www.youtube.com/embed/9X0OPhCxG7I", bolumIsmi: "Trafikte Diğerlerinin Sürücü Davranışlarına Etkisi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
             
        ]
        return trafikAdabiBolumler
    }
}

class aracTeknigiBolumler {
    static let shared = aracTeknigiBolumler()
    
    func getaracTeknigiBolumler() -> [bolum] {
        
        let aracTeknigiBolumler : [bolum] = [
            bolum(id: 1,bolumUrl: "https://www.youtube.com/embed/6MsuxFbkIIE", bolumIsmi: "Araç Tekniği", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 2,bolumUrl: "https://www.youtube.com/embed/8cbLcU5KfsQ", bolumIsmi: "Motorun Ve Aracın Sistemleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 3,bolumUrl: "https://www.youtube.com/embed/dEmUOPU63e4", bolumIsmi: "Araca Binmeden Önce Yapılması Gerekenler", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 4,bolumUrl: "https://www.youtube.com/embed/Kbe9b_d0CUU", bolumIsmi: "Aracın Çalıştırılması", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 5,bolumUrl: "https://www.youtube.com/embed/3DP1qtGIbRI", bolumIsmi: "Gösterge Sistei Görevi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 6,bolumUrl: "https://www.youtube.com/embed/SB4TgMFuBig", bolumIsmi: "Aydınlatma Ve İkaz Sistemi", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 7,bolumUrl: "https://www.youtube.com/embed/VUmnWZr8T9M", bolumIsmi: "Aktif Ve Pasif Güvenlik Sistemleri", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 8,bolumUrl: "https://www.youtube.com/embed/CRNqSPwkVXM", bolumIsmi: "Rodaj Ve Motorun Bakımları", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 9,bolumUrl: "https://www.youtube.com/embed/LMiLeiGqQ1E", bolumIsmi: "Lastikler", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 10,bolumUrl: "https://www.youtube.com/embed/1QmoLfLUFLk", bolumIsmi: "Aracın Durdurulması Gereken Haller", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
            bolum(id: 11,bolumUrl: "https://www.youtube.com/embed/iuAx3QVAvTg", bolumIsmi: "Yakıt Tasarrufu", bolumAciklama: "Bu Sayfa Yaralıları Taşıma Yöntemleri Sayfasıdır."),
        ]
        return aracTeknigiBolumler
    }
}
