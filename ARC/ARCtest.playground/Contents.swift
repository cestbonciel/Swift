import UIKit

class Fruit {
    let name: String
    var quantity: Int
    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
        print("\(name) is being initialized per \(quantity).")
    }
    
    deinit {
        print("\(quantity)\(name) is being deinitialized to tummy.")
    }
}

var reference1: Fruit?
var reference2: Fruit?
var reference3: Fruit?

reference1 = Fruit(name: "banana", quantity: 3)
// banana is being initialized per 3.

reference2 = reference1
reference3 = reference1

