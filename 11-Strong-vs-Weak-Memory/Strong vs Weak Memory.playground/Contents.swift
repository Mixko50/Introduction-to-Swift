import UIKit

// Strong vs Weak Memory and Clousure / Lamda
//Void
//var myFunction: ((Int) -> (Void)) = { number in
//    if number > 3 {
//        print(true)
//    }
//    print(false)
//}

var myFunction: ((Int, Int) -> (Void)) = { number, others in
    if number > 3 && others > 3 {
        print(true)
    }
    print(false)
}

myFunction(4,4)

var multiply: ((Int) -> Int)? = { number in
    return number * 2
}

var multiplyShorter: ((Int) -> Int)? = { number in number*2}

var multiplyShortest: ((Int) -> Int)? = { $0 * 2}

if let value = multiply {
    print(value(2))
}

if let value = multiplyShortest {
    print(value(3))
}


func isGreaterThanThree(number: Int) -> Bool {
    if number > 3 {
        return true
    }
    return false
}
