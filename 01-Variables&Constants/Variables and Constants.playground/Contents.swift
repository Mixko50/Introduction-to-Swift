import UIKit

//Variable, Constant, Static

var greeting = "Hello World"

var x = 4
var y = 1
//var -> you can change the value

y = 2

let a = 5
//let -> constant can't change the value

//static
class Person {
    static let name = "mixko"
    let lastname = "mnr"
}

//john and jen can't copy the name variable
var john = Person()
var jen = Person()

let dave = Person.name

print(Person.name)
print(Person().lastname)
