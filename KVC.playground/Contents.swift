import UIKit


class Food: NSObject {
    @objc dynamic var kind: String
    @objc dynamic var flavor: String = ""
    @objc dynamic var plates: Int = 0
    
    override init() {
        self.kind = "koreaFood"
        self.flavor = "Plain"
        self.plates = 2
        
        super.init()
    }
}

var orderFood = Food()

orderFood.kind
orderFood.flavor
orderFood.plates

orderFood.value(forKey: "kind")
orderFood.value(forKey: "flavor")
orderFood.value(forKey: "plates")


orderFood.setValue("sweet", forKey: "flavor")

orderFood.setValue("italianFood", forKey: "kind")
orderFood.setValue("softTexture", forKey: "flavor")
orderFood.setValue(3, forKey: "plates")


