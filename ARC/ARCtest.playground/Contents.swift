import UIKit
/*
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized.") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
//    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized.") }
}

var nat: Person?
var unit4A: Apartment?

nat = Person(name: "Nat Seohyun Kim")
unit4A = Apartment(unit: "4A")

nat?.apartment = unit4A
unit4A?.tenant = nat

nat = nil
// Nat Seohyun Kim is being deinitialized.
unit4A = nil
// Apartment 4A is being deinitialized.

*/
class Customer {
    let name: String
    var card: CreditCard?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}


class CreditCard {
    let number: UInt64
    //let customer: Customer
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    
    deinit {
        print("Card #\(number) is being deinitialized.")
    }
}

var john: Customer?

john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)

john = nil
john?.card
//john!.card
/*
 error: Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x18bcdc794).
 The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation.
*/
