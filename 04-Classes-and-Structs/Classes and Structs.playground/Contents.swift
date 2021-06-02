import UIKit

// Classes and Structs

class Car{
    
    var color: String
    var model: String
    
    //init is specils type of function
    init(color: String, model: String) {
        self.color = color
        self.model = model
    }
    
}
//Classes need initializers

var BMW: Car = Car(color: "blue", model: "bmw")
var Honda = BMW

Honda.model = "Honda"
print(BMW.model)

//Class : if Honda = BMW - it's mean Honda point to BMW if something in Honda changed that thing in BMW will change too.

//Struct

struct Car2{
    
    var color: String
    var model: String
    
    //init is specils type of function
    init(color: String, model: String) {
        self.color = color
        self.model = model
    }
    
}
//Classes need initializers

var BMW2: Car2 = Car2(color: "blue", model: "bmw")
var Honda2 = BMW2

Honda2.color = "Green"
print(BMW.color)

//Struct : if Honda = BMW - it's mean Honda will copy the data from data BMW to Honda if someething in Honda changed that thing in BMW will not change.

//Class : Honda -> BMW
//Struvt : Honda | BMW
