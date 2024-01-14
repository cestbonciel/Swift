//
//  main.swift
//  Week2_problem_Allen
//
//  Created by Nat Kim on 2024/01/14.
//

import Foundation
//MARK: - 팩토리얼 구하는 함수
func isFactorial(_ num: Int) -> Int {
    let factorialNumber = num
    var result = 1
    for i in 1...factorialNumber {
        result *= i
    }
    return result
}

print(isFactorial(5))
