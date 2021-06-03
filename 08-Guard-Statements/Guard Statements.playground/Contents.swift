import UIKit

// Guard Statements

func numberLargerThanFive(number: Int) -> Bool {
    guard number >= 5, number > 4 else { return false }
    return true
}

numberLargerThanFive(number: 6)

var text: String?
text = "hello world"

if let value = text {
    print(value)
}

func printValue() {
    guard let vaule = text else { return }
    print(vaule + "ttt")
}

printValue()


func someFunc(blog: String?) {

    guard let blogName = blog else {
        print("some ErrorMessage")
        //print(blogName) // will create an error Because blogName isn't defined yet
        return
    }
    print(blogName) // You can access it here ie AFTER the guard statement!!

    //And if I decided to do 'another' guard let with the same name ie 'blogName' then I would create an error!
    guard let blogName = blog else { // errorLine: Definition Conflicts with previous value.
        print(" Some errorMessage")
        return
    }
    print(blogName)
}

func someFunc2(blog: String?) {
    if let blogName1 = blog {
        print(blogName1) // You can only access it inside the code block. Outside code block it doesn't exist!
    }
    if let blogName1 = blog { // No Error at this line! Because blogName only exists inside the code block ie {}
        print(blogName1)
    }
}
