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

// Set unorder
var o: Set = [1,2,3]
var p: Set = [3,4,5]
var q = o.intersection(p)
var q1 = o.symmetricDifference(p)
var q2 = o.union(p)
var q3 = o.subtracting(p)
o.contains(2) // Bool
// Dictionary
var r: [String: String] = ["th":"Thailand", "us": "United State"]
print(r["th"]) // Optional
r["th"] = "thai"
r["en"] = "English"

// Enumeration - camelCase
enum Day {
    case monday, tuesday, wednesday
}

var s = Day.monday
var s1: Day = .tuesday

// Enum Raw value
enum HttpStatus: String {
    case OK = "ok"
    case NotFound = "Not Found"
}

print(HttpStatus.NotFound.rawValue)

// Enum associated value
enum Password {
    case Text(String)
    case Pin(Int)
}

var t = Password.Text("Helllllllllo")
t = Password.Pin(1234)

// If
if u > 10 {
    print("hello")
}

var score = 80
if score >= 80 {
    print("A")
} else if score >= 70 {
    print("B")
} else {
    print("dunno")
}

var u1 = score >= 50 ? "Pass" : "Fail"

// Optional
var v: Int? = nil
v = 10
if v != nil {
    print(v!) // Force unwrapped - Not recommend
}
var w = v ?? 0 // if nil default is 0
print(w)

if let v = v { // if nil then doesn't pass this function - Recommend
    print(v)
}

var y = 10
if true {
    let y = "Hello" // In this scope only
    print(y) // y is over this line
}
print(y)

var z = Int("10") // Optional Int
if let first = Int("10"), let second = Int("20") {
    if first < second {
        print("\(first) \(second)")
    }
}

// Switch
let aa = Day.monday
switch aa { // Must be exhaustive - Default
case Day.monday:
    print("Monday") // Executable code
    fallthrough // Do not need break
case .tuesday:
    print("Tuesday")
case .wednesday:
    print("")
}

score = 85
switch score {
case 95,96,97,98,99,100:
    print("A+")
case 80...94:
    print("A")
case 70..<85: // Check the top case first
    print("B")
case 60...:
    print("C")
case 50...:
    print("D")
case ..<50:
    print("F")
default:
    print("Out of scope")
}

t = Password.Text("Hello 1234")
t = Password.Pin(1234)
switch t {
case .Text(let txt):
    print(txt)
case .Pin(let pin):
    print(pin)
}

let point = (1,10)
switch point {
case (0,0):
    print("0,0")
case (1, let y):
    print("1, \(y)")
default:
    print("Out of scope")
}

// For-In
let names = ["Bond", "Joke", "Tee"]
for na in names {
    print(na)
}

for i in 0...5 {
    print(i)
}

for na in 0..<names.count {
    print(names[na])
}

var index = 0
//while index < names.count {
//    print(names[index])
//    // index ++ -> Swift doesn't have it
//    index += 1
//}
index = 0
repeat {
    print(names[index])
    index += 1
} while index < names.count;

l1: for i in 0...5 {
l2: for _ in 0...i {
        print("*", terminator: "") // No nextline
//        break l1
    // continue l1
    }
    print("")
}

// Naming
// Upper Camel Case - PascalCase
// Lower Camel Case - camelCase

// Function - camelCase
// () -> Void
func hello() {
    print("Hello World")
}

// (String, Int) -> Void
func hello(name: String, age: Int) { // The function nbame can be same, but parameter should difference
    print("Hello \(name) \(age)")
}

func hello(_ name: String, age: Int, gender: String = "male") { // The function nbame can be same, but parameter should difference
    print("Hello \(name) \(age) \(gender)")
}

func show(message text: String) {
    print(text)
}

func show(name: String) {
    
}

func diff(between a: Int, and b: Int) {
    
}

// (Int, Int) -> Int
func sum(a: Int, b: Int) -> Int {
    return a + b
}

func getStatus() -> (code: Int, status: String) {
    (200, "OK")
}

func avg(numbers: Double...) -> Double {
    var sum = 0.0
    for n in numbers {
        sum += n
    }
    return sum / Double(numbers.count)
}

func swap(a: inout Int, b: inout Int) { // send the reference - Normally -> pass by value
    let temp = a
    a = b
    b = temp
}

var dd = 10
var ee = 20
swap(a: &dd, b: &ee)
print(dd)

print(sum(a: 1, b: 1))
hello(name: "Bond", age: 134)
hello("Mixko", age: 20)

let bb = getStatus()


// Function type
var myFunction: (Int, Int) -> Int
myFunction = sum

typealias SumFunction = (Int, Int) -> Int
var myFunction2: SumFunction
myFunction2 = sum

print(myFunction(10,20))

func add(_ a: Int, _ b: Int) -> Int {
    a + b
}

func sub(_ a: Int, _ b: Int) -> Int {
    a - b
}

func cal(_ a: Int, _ b: Int, _ c: (Int, Int) -> Int) -> Int {
    c(a, b)
}

var ff = cal(10,30, add)
ff = cal(20,40, sub)
print(ff)

// Closures
//{
//    (_ a: Int, _ b: Int) -> Int
//    in
//    a + b
//}
ff = cal(10, 20) { $0 + $1 }

var number = [1,2,3,4,5]
number.sorted(by: { $0 > $1 })
print(number)
