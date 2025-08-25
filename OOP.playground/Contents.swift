import UIKit
import Foundation
//struct Person{
//    var name:String
//    var age:Int
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//class Circle{
//    var radius: Double
//
//    init(radius: Double) {
//        self.radius = radius
//    }
//    init(radius:Double,radiusName:String){
//        self.radius=radius
//    }
//    func area() -> Double {
//        return .pi * radius * radius
//    }
//}
//class MyCircle:Circle{
//    override init(radius: Double) {
//        super.init(radius: radius)
//    }
//
//    override func area() -> Double {
//        super.area()
//        return .pi*radius*radius
//
//    }
//}
////var circle = Circle(radius: 5.0)
////print("Area: \(circle.area())")
////var person1=Person(name:"Abak",age:25)
////var person2=person1
////person2.age=30
////print("person1 name\(person1.name),person1 age\(person1.age)")
////print("person2 name\(person2.name),person2 age\(person2.age)")
//var circle1=Circle(radius: 5.0)
//circle1.area()
//
//
//
struct EmirElemanı{
    let isim:String
    let fiyat:Int
}
protocol Emirİşlemi{
    var başlık:String {get}
    var emirelemanı:EmirElemanı {get set}
    var toplamTutar:Double {get set}
    var yeniFiyat:Double? {get set}
    
    func fiyatGüncelle(_ yeniFiyat:Double)
    func adetBelirle(_ adet:Int)
    // sadece  kriptoda
    func komisyonEkle(_ komisyon:Double)
    func emriGönder()
    //sadece hissede
    func tarihEkle(_ date:Date)
}
extension Emirİşlemi{
    func komisyonEkle(_ komisyon:Double){
        
    }
    func tarihEkle(_ date: Date){
        
    }
}
class HisseEmirİşlemi: Emirİşlemi{
    var yeniFiyat: Double?
    
    
    
    var başlık: String = ""
    
    var emirelemanı: EmirElemanı
    
    var toplamTutar: Double = 0.0
    
    init(emirElemanı:EmirElemanı) {
        self.emirelemanı=emirElemanı
        
    }
    
    
    
    
    
    func fiyatGüncelle(_ yeniFiyat: Double) {
        print("yeni Fiyat \(yeniFiyat)")
        self.yeniFiyat=yeniFiyat
        <#code#>
    }
    
    func adetBelirle(_ adet: Int) {
        toplamTutar+=Double(adet)*(yeniFiyat ?? Double(emirelemanı.fiyat))
        <#code#>
    }
    
    
    
    func emriGönder() {
        print("emir gönderildi toplam tutar \(toplamTutar)")
        <#code#>
    }
    
    func tarihEkle(_ date: Date) {
        print("tarih geldi \(date)")
        <#code#>
    }
    func komisyonEkle(_ komisyon:Double){
        toplamTutar+=komisyon
        
    }
    
    
    
}
class KriptoEmirİşlemi: Emirİşlemi{
    var yeniFiyat: Double?
    
    init(emirElemanı:EmirElemanı) {
        self.emirelemanı=emirElemanı
        
    }
    var başlık: String = ""
    
    var emirelemanı: EmirElemanı
    
    var toplamTutar: Double = 0.0
    
    func fiyatGüncelle(_ yeniFiyat: Double) {
        toplamTutar
        <#code#>
    }
    
    func adetBelirle(_ adet: Int) {
        <#code#>
    }
    
    func komisyonEkle(_ komisyon: Double) {
        <#code#>
    }
    
    func emriGönder() {
        <#code#>
    }
    
   
    
    
}
class Ekran {
    func sayfaAçıldı() {
        print(String(describing: self)+"Sayfa Açıldı")
        
    }
    func sayfaKapatıldı() {
        print(String(describing: self)+"Sayfa Kapandı")
        
    }
}
class EmirGirişEkranı: Ekran {
    override func sayfaAçıldı() {
        super.sayfaAçıldı()
    }
    override func sayfaKapatıldı() {
        super.sayfaKapatıldı()
    }
    
}
