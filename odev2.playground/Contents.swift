import UIKit

//KM mil sorusu

class Soru1 {
    func soru1(km: Double ) -> Double {
        let mile = km * 0.621
        return mile
    }
}
let s1 = Soru1()
let sonuc = s1.soru1(km: 20)
print("Km'nin mile' e dönüşmüş hali : \(sonuc)")
print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")
// Dikdörtgen sorusu

class Soru2 {
    func soru2(kisaKenar: Int, uzunKenar: Int) -> Int {
        var alan = kisaKenar * uzunKenar
        return alan
    }
}
var s2 = Soru2()
var sonuc2 = s2.soru2(kisaKenar: 20, uzunKenar: 40)
print("Dikdörtgenin alanı : \(sonuc2)")
print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")

//Faktoriyel sorusu
class Soru3 {
    func soru3(sayi: Int) -> Int {
        if sayi == 0 || sayi == 1  {
            return 1
        }else {
            return sayi * soru3(sayi: sayi - 1)
        }
    }
}
let faktoriyel = Soru3()
let sonuc3 = faktoriyel.soru3(sayi: 5)

print("\(sonuc3)")
print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")

// Kaç tane e harfi olduğunu bulma

class Soru4{
    func soru4 (kelime: String) {
        var sayac = 0
        for karakter in kelime {
            if karakter == "e" || karakter == "E" {
                sayac += 1
            }
        }
        print("Girdiğiniz kelimede toplam \(sayac) tane e harfi vardır")
    }
}
let adet = Soru4()
adet.soru4(kelime: "Zeynep")

print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")

// İç açılarının toplamı
class Soru5 {
    func icAciToplam(kenarSayisi : Int) -> Double {
        let toplam = Double(kenarSayisi - 2) * 180 / Double(kenarSayisi)
        return Double(toplam)
    }
}
let s5 = Soru5().icAciToplam(kenarSayisi: 3)
print("Üçgenin her bir iç açısı \(s5) ,iç açılarının toplamı :\(s5 * 3)")

print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")

// Çalışma saatleri
class Soru6 {
func hesaplaMaas(gunSayisi: Int) -> Double {
let calismaSaatleri = gunSayisi * 8
let normalSaatUcreti: Double = 40
let mesaiSaatUcreti: Double = 80
let mesaiSiniri: Int = 150
let normalMaas = Double(calismaSaatleri) * normalSaatUcreti

var mesaiSaatleri = 0
if calismaSaatleri > mesaiSiniri {
mesaiSaatleri = calismaSaatleri - mesaiSiniri
}

let mesaiMaasi = Double(mesaiSaatleri) * mesaiSaatUcreti

let toplamMaas = normalMaas + mesaiMaasi

return toplamMaas
}
}
let maas = Soru6()
var sonuc6 = maas.hesaplaMaas(gunSayisi: 10) // Çıktısı: 3200.0₺
print("Toplam maaş: \(sonuc6) ₺")

print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")

//otopark süresi
class Soru7 {
    func otoparkUcretiHesapla(saat: Int) -> Double {
        let ilkSaat = 50
        let ekSaat = 10
        
        if saat <= 0 {
            return 0
        }
        else if saat <= 60 {
            return Double(ilkSaat)
        }
        else if saat > 60 {
            let saatlikUcret = ilkSaat + (saat / 60 - 1) * ekSaat
            return Double(saatlikUcret)
        } else {
            return 0
        }
    }
}
let ucretHesaplama = Soru7()
let ucret = ucretHesaplama.otoparkUcretiHesapla(saat: 80)
print(ucret)
