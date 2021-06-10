import UIKit

// Arrays and Dictionaries

var name: [String] = ["Joe","John","Jacob"]

var array: [Any] = ["Mixko", 3, 4.24 ]

array.append(4)
array.count
array.popLast() //delete 4

for number in array {
    print(number)
}

var cars: [String: Int] = ["bmw" : 3, "Honda": 1 , "Lexus": 12 ]
print(cars["bmw"] as Any)

for car in cars {
    print(car)
}

for (key, value) in cars {
    print("\(key) \(value)")
}
