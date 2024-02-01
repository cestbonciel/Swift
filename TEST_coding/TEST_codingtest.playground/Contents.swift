import UIKit

//func getSumNumbers(a: Int, b: Int) -> Int {
//    var sum = Int(a...b).words.reduce(a, +)
//    var c = Int.random(in: 1...10)
//    var result: Int = 0
//    if sum % c == 1 {
//        result += (sum + c)
//    }
//    return result
//}
//
//getSumNumbers(a: 2, b: 8)

// 입력 받기
//

func executeMultiple(a: Int, b: Int) -> Int {
    guard a >= 1, a <= 100, b >= 1, b <= 100 else { return 0 }
    return a * b
}
executeMultiple(a: 19, b: 11)
