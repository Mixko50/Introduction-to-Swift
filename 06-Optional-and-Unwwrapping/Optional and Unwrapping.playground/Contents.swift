import UIKit

// Optionals

var name: String? = "Joe"
// ? -> may or may not a strring
name = nil

var x: Int? = 3
var y: Int? = 23
// x and y are not Int that are Int Optional we need to unwrap before use the value
// ? -> like a box that store the value inside

if let value = x {
    if let value2 = y {
        let result = value + value2
        print(result)
    }
}

var price: Double? = nil

price = 1.23
print(price)

type(of: price)
