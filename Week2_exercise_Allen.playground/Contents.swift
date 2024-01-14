import UIKit

func printRandomString(strs: String) -> [Character] {
    var result: [Character] = []
    for char in strs.randomElement() {
        result += char
    }
    return result
}


