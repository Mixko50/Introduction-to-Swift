import UIKit

//Protocols -> Interface

protocol CarDataSource{
    var color: String { get set }
    
    func drive()
    func isAllWheelDrive() -> Bool
}

class Car {
    
}

class BMW: Car, CarDataSource{
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func drive() {
        print("Mixko!")
    }
    
    func isAllWheelDrive() -> Bool {
        return true
    }
}

var MixkoCar: BMW = BMW(color: "Pink")
print(MixkoCar.color + "is \(MixkoCar.isAllWheelDrive())")
MixkoCar.drive()

//protocols เมื่อใช้ฟังก์ชันแค่บางอย่างใน protocols ต้องใช้ @objc
@objc protocol CarDataSource2{
    var color: String { get set }
    
    @objc optional func drive2()
    func isAllWheelDrive2() -> Bool
}

class BMW2: Car, CarDataSource2 {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func isAllWheelDrive2() -> Bool {
        return false
    }
}

var MixkoCar2: BMW2 = BMW2(color: "Pink")
print("MixkoCar2 is \(MixkoCar2.color) can drive? \(MixkoCar2.isAllWheelDrive2())")
