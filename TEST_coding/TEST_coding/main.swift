//
//  main.swift
//  TEST_coding
//
//  Created by Nat Kim on 2024/01/30.
//

import Foundation

//func sortNumbers(a: Int, b: Int) {
//    guard a >= 1, a <= 100, b >= 1, b <= 100 else { return }
//    var result = 0
//    if a < b {
//        for num in a...b {
//            print(num, separator: " ", terminator: " ")
//        }
//    } else {
//        for num in b...a {
//            print(num, separator: " ", terminator: " ")
//        }
//    }
//    print()
//}

//sortNumbers(a: 2, b: 5)
//sortNumbers(a: 5, b: 2)

//func sortNumbers(a: Int, b: Int) -> String {
//    guard a >= 1, a <= 100, b >= 1, b <= 100 else {
//        return "잘못된 입력입니다."
//    }
//
//    var result = ""
//
//    if a < b {
//        for num in a...b {
//            result += "\(num) "
//        }
//    } else {
//        for num in b...a {
//            result += "\(num) "
//        }
//    }
//
//    return result
//}
//
//let sortedNumbers = sortNumbers(a: 2, b: 5)
//print(sortedNumbers)

//let arr = readLine()!.split(separator: " ").map{i in Int(i)!}.reduce(1, *)
//print(arr)
//
//
//let nums : [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }
//print(nums[0] * nums[1])
//


struct Movie {
    var genre: String
    var time: Float
}

var ticket = Movie(genre: "호러", time: 60.0)

print(ticket)
