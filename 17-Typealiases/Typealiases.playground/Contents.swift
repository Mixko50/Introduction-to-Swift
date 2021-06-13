import UIKit

//Typealias

typealias Code = String
typealias Addeess = [String: String]

var code: Code = ""
var address: Addeess = ["":""]

func validateAddress(address: Addeess){
    
}

func validateCode(code: Code){
    
}

validateCode(code: code)

typealias PromoCodeValidationFunction  = ((String) -> (Bool))

var validateFunction: PromoCodeValidationFunction?
