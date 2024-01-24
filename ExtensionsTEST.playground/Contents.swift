import UIKit

extension String {
    func reverse() -> String {
        return String(self.reversed())
    }
    
    var 길이: Int {
        return self.count
    }
}

let originalString = "Hello, Swift!"
let reversedString = originalString.reverse()
let stringLength = originalString.길이


print(reversedString)
print(stringLength)
