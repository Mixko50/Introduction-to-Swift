import UIKit

//Math functions

var x = 30
var y = 7

var r = 5.63
r.round()
r.squareRoot()

var t = -69
abs(t)

pow(Double(y), 3)

var result = x % y

func factorial(number: Int) -> Int {
    return number == 1 ? 1 : number * factorial(number: number - 1)
}

factorial(number: 5)
