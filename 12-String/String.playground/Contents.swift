import UIKit

// String

var steve: String = "Steve Jobs"

var steve2: String? = "Steve Jobs"

if let valie = steve2 {
    print(valie)
}

//Combind

var first = "Steve"
var last = "Jobs"
var number = 1

var fullname = "My name is \(first) \(last) and I am number \(number)"
print(fullname)

let length = fullname.count
print(length)

let endIndex = fullname.index(fullname.startIndex, offsetBy: 11)
fullname.replaceSubrange(...endIndex, with: "My god is ")
print(fullname)

var name = "Mixko"
name.replacingOccurrences(of: "M", with: "J")
print(name)
