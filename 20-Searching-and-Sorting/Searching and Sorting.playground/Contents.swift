import UIKit

//Searching
var number = [1,2,3,4,5,6,56,12,89,32,45,1,52,49]

func isNumberInArray(_ number: Int, _ array: [Int]) -> Bool {
    for x in array {
        if x == number {
            return true
        }
    }
    return false
}

let result = isNumberInArray(322, number)

//Sorting
number.sort()

var name: [String] = ["Mixko", "Test", "Youra", "Apisit", "Bee"]
name.sort()

struct User {
    var firstname: String
}

var users = [
    User(firstname: "Mixko"),
    User(firstname: "Test"),
    User(firstname: "Youra"),
    User(firstname: "Apisit"),
    User(firstname: "Bee")
]

let sortrdItems = users.sorted (
    by : {$0.firstname < $1.firstname}
)

print(sortrdItems)
