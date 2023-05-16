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
            bolum(id: 1,bolumUrl: "https://www.youtube.com/embed/fa2mC0FsKVA", bolumIsmi: "İlkyardımın Tanımı ve Önemi", bolumAciklama: """
A.İlkyardımın Temel Uygulamalarıİlkyardım
    -Acil Tedavi
    -İlk yardım ile Acil Tedavi Arasındaki Farklar
    -İlkyardımın Amaçları
    -112 ‘nin Aranmasında Dikkat Edilecekler
    -İlkyardımcının Müdahale ile İlgili Yapılması Gerekenler
    -İlkyardımcı ve Özellikleri
    -Hayat Kurtarma Zinciri

İLKYARDIM :
    Ani olarak hastalanan yada kazaya uğrayan kimseye tıbbi tedavisi yapılana kadar olay yerinde yapılan hayat kurtarıcı girişimlere ilk yardım denir.

ACİL TEDAVİ:
    Acil tedavi ünitelerinde hasta/yaralılara doktor ve sağlık personeli tarafından yapılan tıbbi müdahalelerdir.

İLKYARDIM İLE ACİL TEDAVİ ARASINDAKİ FARKLAR
    Acil tedavi bu konuda ehliyetli kişilerce gerekli donanımla yapılan müdahale olmasına karşın ilkyardım bu konuda eğitim almış herkesin olayın olduğu yerde bulabildiği malzemeleri kullanarak yaptığı hayat kurtarıcı müdahaledir.

İLKYARDIMIN AMAÇLARI
    Hayati tehlikeyi ortadan kaldırmak
    Yaşamsal fonksiyonların sürdürülmesini sağlamak
    Hasta/yaralının durumununUN kötüleşmesini önlemek
    İyileşmeyi kolaylaştırmak.

İLKYARDIMIN TEMEL UYGULAMALARI
    İlkyardım temel uygulamaları Koruma Bildirme Kurtarma (KBK) olarak ifade edilir.
Koruma:
    Kaza sonuçlarının ağırlaşmasını önlemek için olay yerinin değerlendirilmesini kapsar. En önemli işlem olay yerinde oluşabilecek tehlikeleri belirleyerek güvenli bir çevre oluşturmaktır.

Bildirme:
    Olay / kaza mümkün olduğu kadar hızlı bir şekilde telefon veya diğer kişiler aracılığı ile gerekli yardım kuruluşlarına bildirilmelidir. Türkiye'de ilkyardım gerektiren her durumda telefon iletişimleri 112 acil telefon numarası üzerinden gerçekleştirilir.

Kurtarma (Müdahale):
    Olay yerinde hasta / yaralılara müdahale hızlı ancak sakin bir şekilde yapılmalıdır.

112’NİN ARANMASINDA DİKKAT EDİLECEKLER
    Sakin olunmalı yada sakin olan bir kişinin araması sağlanmalıdır.
    112 merkezi tarafından sorulan sorulara net bir şekilde cevap verilmelidir;
    Kesin yer ve adres bilgileri verilirken olayın olduğu yere yakın bir caddenin yada çok bilinen bir yerin adı verilmelidir.
    Kimin hangi numaradan aradığı bildirilmelidir.
    Hasta/yaralı(lar)ın adı ve olayın tanımı yapılmalıdır
    Hasta/yaralı sayısı ve durumu bildirilmelidir
    Eğer herhangi bir ilkyardım uygulaması yapıldıysa nasıl bir yardım verildiği belirtilmelidir
    112 hattında bilgi alan kişi gerekli olan tüm bilgileri aldığını söyleyinceye kadar telefon kapatılmalıdır.

İLKYARDIMCININ MÜDAHALE İLE İLGİLİ YAPMASI GEREKENLER
    Hasta / yaralıların durumunu değerlendirmek (ABC) ve öncelikli müdahale edilecekleri belirlemek
    Hasta/yaralının korku ve endişelerini gidermek
    Hasta/yaralıya müdahalede yardımcı olacak kişileri organize etmek
    Hasta/yaralının durumunun ağırlaşmasını önlemek için kendi kişisel olanakları ile gerekli müdahalelerde bulunmak
    Kırıklara yerinde müdahale etmek
    Hasta/yaralıyı sıcak tutmak
    Hasta/yaralının yarasını görmesine izin vermemek
    Hasta/yaralıyı hareket ettirmeden müdahale yapmak
    Hasta/yaralının en uygun yöntemlerle en yakın sağlık kuruluşuna sevkini sağlamak (112) (Ancak ağır hasta/yaralı bir kişi hayati tehlikede olmadığı sürece asla yerinden
kıpırdatılmamalıdır.)

İLKYARDIMCI VE ÖZELLİKLERİ
    Olay yeri genellikle insanların telaşlı ve heyecanlı oldukları ortamlardır. Bu durumda ilkyardımcı sakin ve kararlı bir şekilde olayın sorumluluğunu alarak gerekli müdahaleleri doğru olarak yapmalıdır. Bunun için bir ilkyardımcıda aşağıdaki özelliklerin olması gerekmektedir:
    İnsan vücudu ile ilgili temel bilgilere sahip olmak
    Önce kendi can güvenliğini korumak
    Sakin kendine güvenli ve pratik olmak
    Eldeki olanakları değerlendirebilmek
    Olayı anında ve doğru olarak haber vermek (112’yi aramak)
    Çevredeki kişileri organize edebilmek ve onlardan yararlanabilmek
    İyi bir iletişim becerisine sahip olmak.

HAYAT KURTARMA ZİNCİRİ
    Hayat kurtarma zinciri 4 halkadan oluşur. Son iki halka ileri yaşam desteğine aittir ve ilkyardımcının görevi değildir.
    1.Halka - Sağlık kuruluşuna haber verme
    2.Halka - Olay yerinde yapılan Temel Yaşam Desteği
    3.Halka - Ambulans ekiplerince yapılan müdahaleler
    4.Halka - Hastane acil servisleridir

"""),
            bolum(id: 2, bolumUrl: "https://www.youtube.com/embed/AwWIsWCig0k", bolumIsmi: "Temel Yaşam Desteği, Solunum Ve Kalp Durması", bolumAciklama: """
TEMEL YAŞAM DESTEĞİ NEDİR?
    Hayat kurtarmak amacı ile hava yolu açıklığı sağlandıktan sonra solunumu ve/veya kalbi durmuş kişiye yapay solunum ile akciğerlerine
oksijen gitmesini dış kalp masajı ile de kalpten kan pompalanmasını sağlamak üzere yapılan ilaçsız müdahalelerdir.
    Temel yaşam desteğine başlarken eğer çevrede biri varsa hemen 112 aratılmalıdır. Boğulma ve travmalarda ilkyardımcı yalnız ise 1 siklusdan sonra kendisi yardım çağırmalıdır. Bebek ve çocuklarda ilkönce iki solunum yapılır ardından 112 aranır.

Solunum ve kalp durması nedir?
    Solunum durması: Solunum hareketlerinin durması nedeniyle vücudun yaşamak için ihtiyacı olan oksijenden yoksun kalmasıdır. Hemen yapay solunuma başlanmaz ise bir süre sonra kalp durması meydana gelir.
    Kalp durması: Bilinci kapalı kişide büyük arterlerden nabız alınamaması durumudur. Kalp durmasına 5 dakika içinde müdahale edilmezse dokuların oksijenlenmesi bozulacağı için beyin hasarı oluşur.

Hava yolunu açmak için Baş-Çene pozisyonu nasıl verilir?
    Bilinci kapalı bütün hasta/yaralılarda solunum yolu kontrol edilmelidir. Çünkü dil geriye kayabilir yada herhangi bir yabancı madde solunum yolunu tıkayabilir. Ağız içi kontrol edilerek temizlendikten sonra hastaya baş-çene pozisyonu verilir.
    Bunun için ;Bir el alına yerleştirilir
    Diğer elin iki parmağı çeneye yerleştirilir
    Baş geriye doğru itilir.
    Böylece dil yerinden oynatılarak hava yolu açıklığı sağlanmış olur.

ÇOCUKLARDA TEMEL YAŞAM DESTEĞİ
    Çocuklarda (1-8 yaş) Temel Yaşam Desteği nasıl yapılır?
    Çocuğun hava yolu açıldıktan sonra solunum Bak-Dinle-Hisset yöntemi ile değerlendirilir
    Solunum yoksa tıbbi yardım istenir (112)
    Çocuğa önce Baş-Çene pozisyonu verilir
    Hemen yapay solunuma başlanır. YAPAY SOLUNUMA BAŞLAMADAN ÖNCE SOLUNUMUN OLMADIĞINDAN KESİNLİKLE EMİN OLUNMALIDIR!
    Yapay solunum ağızdan ağıza ya da ağızdan ağız ve buruna tekniği ile çocuğun yaşı ve yüzünün büyüklüğüne göre gerçekleştirilir
    Yapay solunuma iki kez hava üflenerek başlanır ve tıbbi yardım istenir (112)
    Yapay solunum dakikada 15-20 olacak şekilde yapılır
    Nabız kontrolü yetişkinlerdeki gibidir (şah damarından 5 saniye süreyle kontrol edilir)
    NABIZIN ALINAMADIĞINDAN YANİ KALBİN ATMADIĞINDAN KESİN OLARAK EMİN OLUNDUKTAN SONRA KALP MASAJINA BAŞLANMALIDIR!
    Kalp masajı tek elle basılarak yapılır
    Bası noktası yetişkinlerde olduğu gibi belirlenir. Büyük çocuklarda tek elin basısı yetersiz görülürse yine yetişkinlerdeki gibi uygulama yapılır
    Çocuklarda dakikada 100 bası uygulanır
    Bası gücü ise göğüs boşluğu 2.5-5 cm çökecek şekilde (yandan bakıldığında göğüs yüksekliğinin 1/3’ü kadar)
    Çocuklarda bir ya da iki ilkyardımcı ile 5/1 olacak şekilde uygulama yapılır ancak çocuğun iriliğine göre bu uygulama gerekirse yetişkinlerde olduğu gibi 5/2 olarak gerçekleştirilir.

BEBEKLERDE TEMEL YAŞAM DESTEĞİ
Bebeklerde (0-1 yaş) Temel Yaşam Desteği nasıl yapılır?
    Bebeğin topuğuna hafifçe vurularak bilinç kontrolü yapılır
    Çocuğun hava yolu açıldıktan sonra solunum Bak-Dinle-Hisset yöntemi ile değerlendirilir
    Solunum yolunun açılması için bebeğe Baş-Çene pozisyonu verilir (bebeğin başı hafifçe itilir). Başın fazla gerdirilmesi solunum yollarını tıkayıp olumsuz sonuçlar yaratabileceğinden başa hafif bir eğim vermek son derece önemlidir!
    Yapay solunuma başlanırken ilkyardımcı ağzını bebeğin ağzı ve burnunun üstüne yerleştirilmelidir
    Yapay solunuma iki kez hava verilerek başlanır
    Tıbbi yardım istenir (112)
    Üflemenin ayarı bebeğin göğsünün kalkış hareketlerine göre olmalıdır çocuğun akciğerlerinin alacağından daha fazla hava üflenmemelidir
    Solunum sıklığı dakikada 20-25 olmalıdır
    Nabız kontrolü dirsek önyüz iç kısmındaki kol atardamarı hissedilerek yapılır
"""),
            bolum(id: 3, bolumUrl: "https://www.youtube.com/embed/pEksX32cjDQ", bolumIsmi: "İnsan Vücudu", bolumAciklama: "Bu Sayfa Temel Yaşam Desteği, Solunum Ve Kalp Durması Sayfasıdır."),
            bolum(id: 4, bolumUrl: "https://www.youtube.com/embed/_QWHrhiOHY4", bolumIsmi: "Suni Solunum Uygulamaları", bolumAciklama: """
            Hava yolu tıkanıklığı nedir?
                Hava yolunun, solunum için gerekli havanın geçişine engel olacak şekilde tıkanmasıdır.
                Tıkanma, hava geçişinin tamamen engellendiği tam tıkanma yada azda olsa bir miktar hava geçişinin olduğu kısmi tıkanma şeklinde olabilir.
            
            Hava yolu tıkanıklığı belirtileri nelerdir?
                Tam tıkanma belirtileri:
                Nefes alamaz,
                Acı çeker, ellerini boynuna götürür,
                Konuşamaz,
                Rengi morarmıştır,
                Bu durumda Heimlich Manevrası (=Karına bası uygulama) yapılır
            
            HEİMLİCH MANEVRASI (KARINA BASI UYGULAMASI NASIL YAPILIR?
            Bilinci yerinde olan(=bilinci açık) kişilerde Heimlich manevrası:
                Hasta ayakta ya da oturur pozisyonda olabilir,
                Arkadan sarılarak gövdesi kavranır,
                Bir elin baş parmağı midenin üst kısmına, göğüs kemiği ( iman tahtası ) altına gelecek şekilde yumruk yaparak konur. Diğer el ile yumruk yapılan el kavranır,
                Kuvvetle arkaya ve yukarı doğru bastırılır,
                Bu hareket 5-7 kez yabancı cisim çıkıncaya kadar tekrarlanır,
                Şah damarından nabız ve solunum değerlendirilir,
                Tıbbi yardım istenir (112).
            
            Bebeklerde tam tıkanıklık olan hava yolunun açılması
                Bebek ilkyardımcının bir kolu üzerine ters (yüzüstü ) olarak yatırılır,
                Başparmak ve diğer parmakların yardımıyla bebeğin çenesi kavranarak boynundan tutulur ve yüzüstü pozisyonda öne doğru eğilir,
                Baş gergin ve gövdesinden aşağıda bir pozisyonda tutulur,
                5 kez el bileğinin iç kısmı ve el ayası ile bebeğin sırtına kürek kemiklerinin arasına hafifçe vurulur
                Diğer kolun üzerine başı elle kavranarak sırtüstü çevrilir,
                Yabancı cismin çıkıp çıkmadığına bakılır,
                Çıkmadıysa başı gövdesinden aşağıda olacak sırtüstü şekilde tutulur,
                5 kez iki parmakla göğüs kemiğinin alt kısmından karnın üs kısmına baskı uygulanır,
                Yabancı cisim çıkana kadar devam edilir,
                Tıbbi yardım istenir (112).
            
            Kısmi tıkanıklık olan kişilerde nasıl ilkyardım uygulanır?
                Eğer kişinin hava yolunda yeterli hava giriş çıkışı mevcutsa, kazazede öksürmeye teşvik edilmeli, yakından izlenmeli ve başka bir girişimde bulunulmamalıdır. Kazazedenin henüz ayakta durabildiği bu dönemde onun arka tarafında yer alınmalıdır.
                Bu durumda, kazazede öncelikle bulunduğu pozisyonda bırakılmalıdır
                Kazazedenin solunum ve öksürüğü zayıflarsa ya da kaybolursa ve morarma saptanırsa derhal girişimde bulunulmalıdır.
                Belirgin bir yabancı cisim, yerinden çıkmış veya gevşemiş takma dişleri varsa bunlar yerinden çıkarılır.
                Eğer yabancı cisim görülemiyorsa ve hastanın durumu kötüye gidiyorsa yukarıda tam tıkanmada anlatılan uygulamalara başlanır.
            
            
            
            
            """),
            bolum(id: 5, bolumUrl: "https://www.youtube.com/embed/DB72wpWMEqk", bolumIsmi: "Kanamalar Ve Yaralanmalar", bolumAciklama: """
KANAMA: Damarın yırtılması sonucu kanın damar dışına akmasına ‘kanama’ denir
    İnsan vücudunda 5-7 litre kan vardır.
    Vücut ağırlığının ortalama 1/13’ü kandır.
    Vücudumuzdaki kanın %20’si kaybedilirse hayati tehlike başlar.
    Aşırı kanama sonucu dolaşım sistemi yetersizleşir.

KANAMA ÇEŞİTLERİ
    Atardamar kanaması: Fışkırarak kesik kesik akar (köpüklü) açık kırmızı renklidir. En tehlikeli kanamadır.
    Toplar damar kanaması: Koyu kırmızıdır, sürekli akar, kirli kandır.
    Kılcal damar kanaması: Sızıntı şeklindedir, kendi kendine durabilir.

KANIN AKTIĞI YERE GÖRE
    Dış kanama: Vücut derisinin bütünlüğü bozularak damardan kanın vücut dışına çıkmasıdır
    İç kanama: Kanın içeriye doğru vücut boşluklarına ve organlara akmasına iç kanama denir.
    İç kanama belirtileri: Baş dönmesi, bölgede sertlik ve soğukluk, bulantı, kusma, iç kanama geçiren kazazedeye, kanayan yere göre pozisyon verilir.

GEÇİCİ KANAMA DURDURMA METOTLARI
1.Kanayan yere elle baskı: Damar el ve parmaklarla sıkıştırılır.

2. Basınç noktalarına baskı:
    Baş bölgelerindeki kanamalar için şakaklara,
    Sırt bölgesindeki kanamalar için köprücük kemiği arka iç kısmına,
    Koldaki ve gövdedeki kanamalar için koltuk altına,
    Bacaktaki kanamalar için kasıklara basınç uygulanır.
    Kafa derisi ve şakak bölgesi kanamalarında kulak önüne baskı uygulanır.

3. Kanayan yerin kalp seviyesinden yukarı tutulması: Kanayan yerdeki kan basıncı azalır, kanama yavaşlar.

İLKYARDIM MALZEMELERİ İLE KANAMA DURDURMA YÖNTEMLERİ

1. Turnike metodu: Kanayan yer ile kalp arasında tek kemik üzerinden sıkma bağı uygulanarak yapılan kanama durdurma metodudur.
    Turnike malzemeleri:
    Genişliği 6-8 cm olan elastik bandaj, eşarp, kravat, mendil.
    Sicim, tel, urgan, ip gibi malzemelerden turnike malzemesi olmaz.
    Turnike 20 dakikada bir 5-10 saniye gevşetilir.
    Turnikeye en fazla 2 saat devam edilir.

2. Basınçlı sargı ile kanamayı durdurmak: Kanayan bölgedeki damarlar sıkıştırılmış olur.

3. Kırık kemiklerin atellenmesi yöntemi: Kırık kemik atellerle sabitlenir ise kanama duracaktır.

    Burun kanamaları: Burun kanamalarında, burun kanatları hafifçe sıkılır, burun üzerine veya enseye buz konur, yüz soğuk su ile yıkanır kanama durmuyorsa buruna tampon yerleştirilir. kanama 20 dakika içerisinde durmazsa bir doktora müracaat edilir.
    
Kulak ve burun kanamaları:
    Kulak ve burun kanaması beraber meydana gelmişse kazazede kanayan kulak altta kalacak şekilde yan yatırılır kanama engellenmez.

Kanamalarla ilgili önemli notlar:
    En tehlikeli kanama atardamar kanamasıdır.
    Kendiliğinden meydana gelen burun kanamasında kazazede oturtulur ve enseye soğuk tatbik edilir.
    Kulak kanamalarında kanayan kulak tarafına kazazede yan yatırılır. Kulak kanaması engellenmez.
    Bacakta turnike bölgesi diz ile kalça, kolda turnike bölgesi dirsek ve omuzdur.
    Öksürme ile ağızdan köpüklü kan gelmesi, akciğer kanamasının belirtisidir.

"""),
            bolum(id: 6, bolumUrl: "https://www.youtube.com/embed/bZw9cqpUh7M", bolumIsmi: "Şok, Bayılma Ve Komada İlkyardım", bolumAciklama: """
ŞOK VE BAYILMADA İLK YARDIM
    Şok: Çeşitli sebeplere bağlı olarak kan dolaşımının giderek azalması ve kaybolmasına şok denir.

    Bayılma: Kan dolaşımının yetersizliği nedeniyle beyne gelen oksijenin azalması nedeniyle geçici olarak oluşan bilinç kaybına bayılma denir.

    Koma: Hastanın çevreyi tanımayacak kadar algılama özelliğinin kaybolmasına derin bilinç kaybına koma denir.

ŞOKUN NEDENLERİ:
    İç ve dış kanamalar
    Çok şiddetli ağrı
    Beklenmedik bir olayla karşılaşma
    Geniş yanıklar
    Zehirlenmeler
    Aşırı s ve tuz kaybı
    Alerjiler
    Kalp krizleri
    Ciddi enfeksiyonlar
    Yüksek ateş

ŞOKUN BELİRTİLERİ:
    Yaşamsal faaliyetlerde zayıflama
    Huzursuzluk-endişe
    Nabzın süratli ve zayıf olması
    Yüzeysel solunum
    Soğuk nemli cilt,titreme
    Deride solukluk
    Vücut ısısının hızla düşmesi
    Giderek bilinç kaybı
    Bulantı kusma
    Göz bebekleri büyük,anlamsız bakış
    Kan basıncında düşme

Şok pozisyonu: Kazazede düz ve sert bir yerde sırt üstü yatırılır. Ayaklar yukarıya kaldırılır, üstü örtülür, baş yana çevrilir. Üstünü örtmekle vücut sıcaklığı korunur, başını yana çevirmekle dilin solunum yolunu tıkaması önlenmiş olur.
    Bilinci açık ve iç kanama yoksa ılık içecekler verilir. Kesinlikle alkol verilmez

BAYILMA NEDENLERİ:
    Kan kaybı kan görme
    Kan basıncının düşmesi
    Havasızlık
    Beklenmedik bir olayla karşılaşma
    Çok şiddetli ağrı
    Stres
    Açlık, kan şekerinin düşmesi
    Kansızlık
    Çık sıcak yüksek ateş

BAYILMA BELİRTİLERİ:
    Baş dönmesi, göz kararması
    Soğuk terleme
    Nabızda artma, zayıflama
    Yüzün solması
    Solunumun sık ve yüzeysel olması
    Kasların gevşemesi,hareket edememe
    Kusma,bulantı
    Bilinç kaybının hemen oluşması
    Kendinden geçme

BAYILMA POZİSYONU: Sıkan giysiler çıkartılır, temiz hava alması sağlanır, şok pozisyonu verilir, duyu organları yarılır, solunumu kontrol edilip takma dişi varsa çıkartılır, yüzü soğuk su ile yıkatılır

NOT: Tokat atılmaz, yakın mesafeden uzun süre alkol koklatılmaz, tüm bu yapılanlara karşı ayılmıyorsa komaya geçiş sürecinde olduğu düşünülerek sağlık kurumuna götürülür

KOMA NEDENLERİ:
    Baş travmaları, beyin kanaması
    Kanamalara bağlı şok, elektrik şoku
    Psikojenik şok
    Alkol zehirlenmeler
    Alerjiler
    Suda boğulma
    Şeker hastalığı, sara, beyin zarı iltihabı vb hastalıklar
    Sıcak çarpması, donma

KOMA BELİRTİLERİ:
    Bilinçsizlik, uyku
    Hareketsizlik, halsizlik
    Uyarılara reaksiyonsuzluk, refleks kayıpları
    Hırıltılı solunum
    Dilin gevşeyerek geriye doğru toplanması

KOMA POZİSYONU: Soluk yolu açıl tutulur, nefes borusu tıkanmışsa hava yolu borusu konur ve yan çevrilir.
     Solunum durmuşsa suni solunum yapılır, vücut ısısı korunur, sıvı verilmez ve uygun pozisyonda sevk edilir.
    
Şok ve bayılmalarla ilgili önemli notlar:
    Şokta zamanla bayılmada aniden meydana gelen bulgu bilinç kaybıdır.
    Bayılan kişilerin duyu organları uyarılır.
    Şok pozisyonunda kazazedenin ayaklarını yukarıya kaldırmanın faydası beyne kan gitmesine yardımcı olmaktır.
    Şok pozisyonunda kazazedenin üstünü örtmenin yararı vücut sıcaklığının korunmasıdır.
    Bayılan ve şoka girenler şok pozisyonuna alınır.
"""),

            bolum(id: 7, bolumUrl: "https://www.youtube.com/embed/ozexMSiBHjU", bolumIsmi: "Yara Çeşitleri", bolumAciklama: """
YARA: Çeşitli nedenlerle vücut dokularının bütünlüğünün bozulması                                          yada bir kısmın kaybına yara denir

ÇEŞİTLERİ:
Ezik yaralar: Çarpma nedeniyle derinin kemik ile zemin arasında ezilmesidir.
Batıcı ve delici yaralar: Sivri uçlu kesici cisimlerle meydana gelen yaralanmalardır.
Kesik yaralar: Kesici cisimlerle meydana gelen ağrılı ve kanamalı yaralardır.
Diğer yaralar: Ateşli silah yaralanmaları, hayvan ısırmaları, yanıklar vs.

BAŞ YARALANMALARI: Sert bir cismin başa yada başın sert cisimlere çarpması sonucunda oluşan yaralanmalardır. Trafik kazalarının %70 inde kafa travması meydana gelir.

BELİRTİLERİ; Başta şişlik
    - yara
    - kanama
    - çöken kırık
    - baş ağrısı
    - baş dönmesi
    - göz çevresinde morluk
    - görme bozukluğu
    - göz bebeklerinde büyüme
    - kızarmış yüz
    - derinden hissedilen nabız
    - bulantı
    - kusma
    - hırıltılı soluk alma
    - geçici hafıza kaybı
    - beyin kanaması var ise kulak ve burundan sarımsı bir sıvı sonra kan gelmesi.

İLK YARDIM; Solunum yolu açık tutulur uygun pozisyon verilir. Başa, beyine batan cisim varsa asla çıkarılmaz. Beyin görünüyorsa üzerine temiz bez örtülür. Yaralının başı soğuk vücudu sıcak tutulur. Beyin kanaması yoksa baş yara üstüe gelecek şekilde yükseltilir.

GÖĞÜS YARALANMALARI: Göğüs bölgesinde açık yada kapalı yaralanmalardır.

BELİRTİLERİ; Yara
    - solunum güçlüğü
    - ağızdan açık kırmızı, köpüklü öksürükle kan gelmesi
    - morarma
    - kaburga kırığı
    - batma hissi
    - ağrı ve şok belirtileri

İLK YARDIM; Göğüste delici yara var ise bu delikten hava girmesi temiz bez üzerine naylon koyarak veya ıslak bezle elin ayası ile engellenir. Batan cisim çıkarılmaz, kapalı göğüs yarası ise soğuk uygulanır, yarı oturur veya oturur pozisyonda sevk edilir

KARIN YARALANMALARI:Vurma çarpma ve basınç altında kalmaya bağlı olarak açık ve kapalı karın yaralanmalarıdır

BELİRTİLERİ:
    Kapalı karın yaralanmalarında; Karında kızarıklık
    - morarma
    - karında sertlik
    - kusma bulantı
    - karında kramplar
    - susuzluk hissi

Açık karın yaralanmalarında; İç organların görünmesi veya dışarı çıkması
    - kusma bulantı
    - yaygın ağrı

İLK YARDIM: Kapalı karın yaralanması ise soğuk tutulur, organ dışarı çıkmış ise uygun pozisyon verilerek organlar içine sokulmadan yaralının üst kısmına toplanarak temiz ıslak bir bezle kapatılır.
    Kesinlikle ağızdan bir şey verilmez, dudaklar ıslatılabilir

OMURGA YARALANMASI: Omurgayı meydana getiren omurların kayması, omurga bağlarının yırtılması, omurların kırılması olayıdır.

BELİRTİLERİ;Duyu kaybı
    - hareketsizlik
    - güçsüzlük
    - yaralanan yerde şişme
    - boyun omurga kırıklarında başı öne eğme sonucu solunum güçlüğü

İLKYARDIM;Yaralı hareket ettirmeden atellenir, felç olasılığına karşı kesinlikle oturtulmaz, omurga kırık ise sert zemine sırt üstü yatırılır, boyun yaralanması varsa boyunluk takılır
"""),
            bolum(id: 8, bolumUrl: "https://www.youtube.com/embed/fVAMUhw6ugw", bolumIsmi: "Kırık, Çıkık Ve Burkulmalar", bolumAciklama: """
KIRIKLAR VE İLKYARDIM
KIRIK: Kemik dokusunun bütünlüğünün bozulmasına kırık denir.

BELİRTİLERİ:
    Ani şişme , morarma
    Ani şiddetli ağrı veya hareketle ağrı
    Normal olmayan görünüş, şekil bozukluğu
    Kemik uçları oynatıldığında sürtünme sesi
    Hareketlerde azalma, hareketsizlik
    Açık kırıklarda kemik uçlarının dışarı çıkması

ÇEŞİTLERİ:
    Kapalı kırık: Kemik uçları deriyi delmemiştir, yara yoktur.
    Açık kırık: Kırılan kemik uçlarının dışarı çıkmıştır, yara ve kanama vardır, sinirlerde hasar olduğunda sakatlık riski vardır.
    Çöken kırık: Yassı kemiklerde görülen kırıktır.
    Komplike kırık: Kırılan kemik komşu organa zarar vermiştir,
    Yaş ağaç kırığı: Kemik bütünlüğü tamamen bozulmamıştır, bozukluk bir bölümdedir.
    Parçalı kırık: Kemik birkaç yerinden kırılmıştır.

Yatarak sevk edilmesi gereken kırıklar:
    Bacak, boyun, omur ilik ve boyun kırıklarıdır. Diğer bölgedeki kırıklar oturuş yada yarı oturuş pozisyonunda sevk edilmelidir.
    Özellikle omur ilik kırıklarında sedye tercih edilmelidir.
    Omur ilik kırıklarında bek ekseni bozulursa kazazede felç olabilir.
    Köprücük kemiği kırıklarında omuz tespit edilmelidir. (üçgen sargı bezi ile)
    Kırık bölgeler tespit edilmezse felç yada iç kanama olabilir.
    Boyun kırıklarında kask veya yumuşak bir malzemeyle boyun bölgesi korunmalıdır.

ATEL: Kırık bölgeleri tespit etmek için kullanılan düz nesnelere atel denir.
    Atel kol ve bacak kırıklarında kullanılır.
    Bacaklarda kırık bölge diz ile kalça arasında ise atelin boyu topuktan koltuk altına kadar olmalıdır.
    Kırık bölge diz ile ayak arasında ise atelin boyu topuktan kalçaya kadar olmalıdır.
    Atel bulunamadığı takdirde kırık bacak araya yumuşak bir malzeme konularak sağlam bacağa bağlanır.

ÇIKIKLAR VE İLKYARDIM
ÇIKIK: Hareketli eklemlerin birbirinden ayrılmasına çıkık denir.

BELİRTİLERİ:
    Ağrı
    Şişme ve morarma
    Şekil bozukluğu, vücut simetrisinin bozulması
    Hareketsizlik ve hareket azlığı
    Eklem çukurunun ele boş gelmesi

İLKYARDIM:
    Kesinlikle çıkığı yerine yerleştirmek için uğraşmamalı
    Çıkan organ hareketsiz duruma getirilir
    Hemen o bölgeye soğuk uygulanmalı
    Elastiki bandajla bandajlanarak kalp seviyesinden üste tutulmalı
    Vücut sıcak tutulmalı
    Uygun pozisyon verilerek sevk edilmeli

BURKULMA: Eklem bağlarının zedelenmesine burkulma denir.

BELİRTİLERİ:
    Hassasiyet
    Şişme, morarma
    Organı kullanamama
    Ağrı

İLKYARRDIM:
    Burkulan yer hareket ettirilmemeli
    Şişmeyi önlemek için ekleme önce 15-20 dk aralıklarla ilk 12saat soğuk sonra sıcak uygulanmalı
    Elastiki bandajla bandajlanmalı
    Burkulan bölge kalp seviyesinden yukarıda tutulmalı
    Burkulan bölge soğuk tutulurken diğer bölgeler şoku engellemek için üstü örtülerek sıcak tutulur

*Önemli Dipnotlar*
    Kırılan, burkulan ve çıkan bölgeler kalp seviyesinin üzerinde tutulmalıdır.
    Ön kol kemiği kırıklarında atel malzemesi yok ise kol gövdeye paralel olacak şekilde tespit edilir.
    Köprücük kemiği kırıklarında kazazedenin omuzu tespit edilmelidir.

Sedye ile kazazedeleri taşırken dikkat edilecek hususlar:
    Sedyenin taşıma yönü ayaklar istikametinde olmalıdır.
    Merdiven inerken ve çıkarken kazazedenin başı yukarıda olmalıdır.
    Ambulansa konulurken kazazedenin başı ön tarafta olmalıdır.









"""),
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
