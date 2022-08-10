import UIKit

var greeting = "Hello, playground"
var u: Int
u = 64
u = 40
//print(u)

// constant
let b: Int
b = 20

// Type inference
var c = 10 // -> Int
let d = "hello"

// Numeric literals
u = 10
u = 0b1010 // Base 2
u = 0o12 // Base 8
u = 0xA // Base 16
u = 1_000_000

// String literals
var strl = "hello " + "world"
strl = "hello \(b)"
strl = #"c:\window\programfile"# // use # to cancel escape sequence
strl = """
Mixko50 \(b)\
YY
"""
//print(strl)

// Other literals
let e: Float = 10.0
let f = false
let h: Character = "A"
let i: UInt = 45


// Tuple
let j = (code: 200, message: "hello")
print(j.code)

// MARK - NO Default value


// Cenversion
let k = Int(e) + u
let l = String(i)

// Array
var n = [1,2,3,4,5]
n[0] = 12
n.append(6)
n.count
