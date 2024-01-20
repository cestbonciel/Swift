import UIKit

//class Person {
//    let name: String
//    init(name: String) { self.name = name }
//    var apartment: Apartment?
//    deinit { print("\(name) is being deinitialized.") }
//}
//
//class Apartment {
//    let unit: String
//    init(unit: String) { self.unit = unit }
//    var tenant: Person?
//    deinit { print("Apartment \(unit) is being deinitialized.") }
//}
//
//var nat: Person?
//var unit4A: Apartment?
//
//nat = Person(name: "Nat Seohyun Kim")
//unit4A = Apartment(unit: "4A")
//
//nat!.apartment = unit4A
//unit4A!.tenant = nat

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
    deinit { print("Apartment \(unit) is being deinitialized.") }
}

var nat: Person?
var unit4A: Apartment?

nat = Person(name: "Nat Seohyun Kim")
unit4A = Apartment(unit: "4A")

nat!.apartment = unit4A
unit4A!.tenant = nat
