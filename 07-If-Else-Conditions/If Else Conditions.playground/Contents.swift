import UIKit

// Conditionals

var x = 2

if x % 2 == 0 {
    print("even number")
} else {
    print("odd number")
}

var y = 123

if y > 0 && y < 20 || y == 123{
    print("Something")
    if y == 3 {
        print(y + 4)
    } else if y == 6 {
        print(y + 100)
    }
} else {
    print("Nothing")
}
