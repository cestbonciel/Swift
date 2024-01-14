//
//  main.swift
//  Week2_problem_Allen
//
//  Created by Nat Kim on 2024/01/14.
//

import Foundation

func isPrime(for number: Int) {
    guard number > 1 else {
        print("\(number)는 소수가 아닙니다.")
        return
    }

    for i in 2..<number {
        if number % i == 0 {
            print("\(number)는 소수가 아닙니다.")
            return
        } else {
            continue
        }
    }
    print("\(number)는 소수입니다.")
}

// 사용 예시
let numberToCheck = 6
isPrime(for: numberToCheck)

isPrime(for: 5)
