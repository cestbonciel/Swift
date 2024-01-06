import UIKit

func operateSum(a: Int, b: Int) {
    let result: Int = a + b
    defer {
        print("result \(result)")
    }
    print("디버깅 창에 영어이름을 작성해주세요.")
    if let input = readLine() {
        print("작성자 이름은 무엇인가요? \(input)")
    }
    
    print("연산을 시작합니다.")
    print("결과값은 얼마일까요?")
}


operateSum(a: 3, b: 1)




func testDefer() {
    print("Check #1")
    defer { print("Defer #1") }
    print("Check #2")
}

testDefer()
