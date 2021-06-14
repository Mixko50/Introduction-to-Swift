import UIKit

//Ternary Operator and Return Statement

//Long
func isGreaterThanFive(number: Int) -> Bool {
    if number > 5 {
        return true
    } else {
        return false
    }
}

//Short
func isGreaterThanSix(number: Int) -> Bool {
    return number > 6 ? true : false
}

let number: Int = 7
number > 6 ? print("Yes") : print("No")

var test: Int?
test = 7

if let value = test {
    value > 8 ? print("Yes") : print("No")
}
