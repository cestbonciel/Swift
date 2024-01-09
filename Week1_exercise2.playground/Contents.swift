import UIKit

// MARK: - 구구단 출력
//for i in 2...9 {
//    print("===\(i)단 구구단===")
//    for j in 1...9 {
//        print("\(i) x \(j) = \(i*j)")
//    }
//}

// MARK: - 3의 배수 출력
//var numbers = 1...100
//for num in numbers {
//    if num % 3 == 0 {
//        print("3의 배수 발견: \(num)")
//    }
//}

/// 가독성이 높아지는 구현
/// 조건 외를 걸러내는 방법
//for i in 1...100 {
//    if i % 3 != 0 { // 조건을 만족하지 못했을 때 다음으로 넘어감
//        continue
//    }
//    print("3의 배수 발견: \(i)")
//}

// MARK: 특정 문자 출력

//var smile = ""
//for _ in 1...5 {
//    smile += "😄"
//    print(smile)
//}

//for i in 1...5 {
//    print(String(repeating: "😄", count: i))
//}

for i in 1...5 {
    for j in 1...5 {
        if j <= i {
            print("😄", terminator: "")
        }
    }
    print()
}
