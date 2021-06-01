import UIKit

//Funcs and Parameters

func myFunction() {
    
}

func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}

func squareNumber(number: Int) -> Int {
    return number * number
}

func log(){
    
}

var x = 3
var y = 7
let sum = addTwoNumbers(a: x, b: y)

let squaredSum: Int = squareNumber(number: x)

log()

func isEven(number: Int) -> Bool {
    if number % 2 != 0 {
        return false
    }
    return true
}

isEven(number: 8)
let result: Bool = isEven(number: 7)
var result2 = isEven(number: 743)
