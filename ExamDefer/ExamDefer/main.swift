//
//  main.swift
//  ExamDefer
//
//  Created by Nat Kim on 2024/01/07.
//

import Foundation


//func operateSum(a: Int, b: Int) {
//    let result: Int = a + b
//    defer {
//        print("result \(result)")
//    }
//    print("디버깅 창에 영어이름을 작성해주세요.")
//    if let input = readLine() {
//        print("작성자 이름은 무엇인가요? \(input)")
//    }
//
//    print("연산을 시작합니다.")
//    print("결과값은 얼마일까요?")
//}
//
//
//operateSum(a: 3, b: 1)

//for i in 0...3 {
//    defer {
//        print("====for 문 돌기====")
//    }
//    print("\(i)번째")
//    if i % 2 == 0 {
//        print("\(i),이것은 짝수입니다.")
//        defer {
//            print("i: \(i)", terminator: "\n")
//        }
//    }
//}

func executeDefers() {
    defer { print("Test 1") }
    defer { print("Test 2") }
    defer { print("Test 3") }
    defer { print("Test 4") }
    print("Test 5")
}

executeDefers()
