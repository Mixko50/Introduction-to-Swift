import UIKit

// Numbers

var a: Int = 1 // Int
var b: Double = 1.00 //Double
var c: Float = 1.0000000165 //Float
var d: Float = 1.000000444

var result = a + Int(b)
var result2 = Double(a) + b
var result3 = Float(a) + c
print(result3)
print(c + d)

var a2: Int? = 1 // Int
var b2: Double? = 1.00 //Double
var c2: Float? = 1.0000000000001 //Float

if let value = a2 {
    if let value2 = b2 {
        let result = Double(value) + value2
        print(result)
    }
}
