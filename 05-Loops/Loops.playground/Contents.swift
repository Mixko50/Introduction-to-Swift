import UIKit

// Loops

let numbers = [1, 2, 3, 4, 5, 6]

for thing in numbers {
    let result = thing*2
    print(result)
}

for thing2 in 1...10 {
    print(thing2)
}

let scores = ["Bob": 42, "Alice": 99, "Jane": 13]

for (name, score) in scores {
    print("\(name)'s score is \(score)")
}

var x = 0

while x < 5 {
    print(x)
    x+=1
}
