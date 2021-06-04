import UIKit

// Enums and Switch Statements

enum States: String {
    case InProgress = "1"
    case Aborted = "2"
    case Complete = "3"
    case WillStart = "4"
}
 
var current = States.InProgress

enum States2 {
    case InProgress
    case Aborted
    case Complete
    case WillStart
}

var current2: States2?
current2 = .Aborted

func checkState() {
    guard let value = current2 else { return }
    switch value {
    case .InProgress:
        print("InProgress")
        break
    case .Aborted:
        print("Abortrd")
        break
    case .Complete:
        print("Complete")
        break
    case .WillStart:
        print("WillStart")
        break
    }
}
checkState()

var color: UIColor?
color = .purple

