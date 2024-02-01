import UIKit

struct Color1 {
    let red, green, blue: Double
    
    init() {
        self.init(red: 0.0, green: 0.0, blue: 0.0)
//        Argument passed to call that takes no arguments
    }
    
    init(white: Double) {
        self.init(red: white, green: white, blue: white)
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}


