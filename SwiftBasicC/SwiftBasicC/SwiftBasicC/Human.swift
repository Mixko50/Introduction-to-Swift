// There are 2 things in class
// 1. data member or property
// 2. member function

class HumanClass {
    // store property
    var name: String
    var firstName: String? // default class is nil
    var lastName: String?
    
    // compute property
    var fullName: String {
        get {
            guard let firstName = firstName else {
                return ""
            }
            
            guard let lastName = lastName else {
                return firstName
            }
            
            return "\(firstName) \(lastName )"
        }
        set {
            let names = newValue.split(separator: " ")
            guard names.count >= 1 else {
                return
            }
            
            firstName = String(names[0])
            
            guard names.count >= 2 else {
                return
            }
            
            lastName = String(names[1])
        }
    }
    
    init(){
        name = ""
    }
    
    init(name: String) {
        self.name = name
    }
    
    func speak(){
        print("\(name) is speaking")
    }
    
    func action() {
        print("\(name) no action...")
    }
}

// Inheritance
class HumaneExtend: HumanClass {
    func walk() {
        print("\(name) is walking")
    }
}

class IronmanClass: HumaneExtend {
    func fly() {
        print("\(name) is flying")
    }
    override func action() {
        fly()
    }
}

class SpiderManClass: HumaneExtend {
    func shoot() {
        print("\(name) is shooting")
    }
    
    override func action() {
        shoot()
    }
}

// -----------------------------------------------------------------------------------------------------------------------------

// Think of protocal before struct
// Protocol (interface)
protocol HumanProtocol {
    var name: String { get set }
    var firstName: String? { get set }
    var lastName: String? { get set }
    func speak()
    func walk()
}

extension HumanProtocol {
    func speak() {
        print("\(name) is speaking")
    }
    
    func walk() {
        print("\(name) is speaking")
    }
}

protocol IronManProtocol: HumanProtocol {
    func fly()
}

protocol SpidermanProtocol: HumanProtocol {
    func shoot()
}

protocol ActionProtocol {
    func action()
}

// Adopt and conform
struct HumanStruct: HumanProtocol { // Struct cant extend use extenstion instead
    
    var name: String
    var firstName: String?
    var lastName: String?
    
    // store property
//    var name: String
//    var firstName: String? // default is nil
//    var lastName: String?
//
//    func speak() {
//        print("\(name) is speaking")
//    }
}

// Extension
//extension HumanStruct {
//    func walk() {
//        print("\(name) is speaking")
//    }
//}

struct IronmanStruct: IronManProtocol {
    var name: String
    var firstName: String?
    var lastName: String?
    
    func fly() {
        print("\(name) is flying")
    }
}

struct SpidermanStruct: SpidermanProtocol {
    var name: String
    var firstName: String?
    var lastName: String?
    
    func shoot() {
        print("\(name) is shooting")
    }
}

extension IronmanStruct: ActionProtocol {
    func action() {
        fly()
    }
}

extension SpidermanStruct: ActionProtocol {
    func action() {
        shoot()
    }
}
