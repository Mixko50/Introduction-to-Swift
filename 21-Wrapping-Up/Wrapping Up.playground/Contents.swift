import UIKit

// Summary

protocol AddressDataSource {
    func myAddress() -> String
}

class Neighborhood {
    let homes: [Home] = []
}

class Home : AddressDataSource {
    let rooms: [Room] = []
    
    func myAddress() -> String {
        return "Hello"
    }
}

class Room {
    
    var color = "blue"
    var width = 12
    var lenght = 32.5
    
    var area: Double?
    
    func getArea() -> Double {
        guard let value = area else { return Double(width) * lenght}
        return value
    }
    
    func isOnSecondFloor() -> Bool {
        return true
    }
}

let button = UIButton(frame: CGRect(x: 2, y: 2, width: 10, height: 10))
