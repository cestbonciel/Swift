import UIKit
/*
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
*/

// MARK: - 팩토리얼 구하는 함수
// 5! = 5 x 4 x 3 X 2 X 1
/*
var factorialNumber = 5
var result = 1
for i in 1...factorialNumber {
    print(result *= i)
    
}

print(result)


func isFactorial(_ num: Int) -> Int {
    let factorialNumber = num
    var result = 1
    for i in 1...factorialNumber {
        print(result *= i)
    }
    return result
}

isFactorial(5)
*/

func factorialLoop(num: Int) -> Int {
    var result = 1
    var currentNum = num

    while currentNum > 1 {
        result *= currentNum
        currentNum -= 1
    }

    return result
}

let result = factorialLoop(num: 5)
print(result)
