import UIKit

// MARK: - Designate initializer (지정생성자) - Overloading
struct Color {
    let red, green, blue: Double

    init() {      // 기본 생성자. 기본값을 설정하면 자동으로 제공됨
        self.init(red: 0.0, green: 0.0, blue: 0.0)
    }

    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }

    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
}

// MARK: - Designated and Convenience Initializer

class FoodRestaurant {
    var name: String
    var category: String
    
    init(name: String, category: String) {
        self.name = name
        self.category = category
    }

    convenience init() {
//        self.init(name: "🥘 [not ordered yet. please choose your meal.]")
        self.init(name: "라면", category: "한식")
    }
    
    convenience init(name: String) {
        self.init(name: name, category: "Italian")
    }
}



var order1 = FoodRestaurant(name: "비빔밥", category: "한식")

var order2 = FoodRestaurant(name: "pizza")

order2.name
order2.category
print(order2.category)


let burger1 = FoodRestaurant(name: "BaconBurger")
burger1.category = "American Food"
print(burger1.category)

let namedMeat = FoodRestaurant(name: "Bacon")

let newOrder = FoodRestaurant()
print(newOrder.name)
print(newOrder.category)
