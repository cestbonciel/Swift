import UIKit

func calculate(number: Int) -> Int {
    var sum = 0
    
    func square(num: Int) -> Int {
        sum += (num * num)
        return sum
    }
    let result = square(num: number)
    
    return result
}

calculate(number: 3)
calculate(number: 10)
calculate(number: 20)

// 교재 Closure 메모리구조의 이해 참고 - 614p.

func calculateFunc() -> ((Int) -> Int) {
    var sum = 0
    
    func square(num: Int) -> Int {
        sum += (num * num)
        return sum
    }
    
    return square
}

var squareFunc = calculateFunc()

squareFunc(10)
squareFunc(20)
squareFunc(20)


/// 변수에 저장하지 않는 경우
/// (Heap 메모리에 유지하지 않음)

calculateFunc()(10)
calculateFunc()(20)
calculateFunc()(20)

// 레퍼런스 타입
var dodoFunc = squareFunc
dodoFunc(20)
