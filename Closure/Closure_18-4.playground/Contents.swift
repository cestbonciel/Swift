import UIKit
/*:
# 클로저의 문법 최적화
 - 클로저는 실제 사용시 읽기 쉽고, 간결한 코드 작성을 위해 축약된 형태의 문법을 제공함
 ---
 */
 
 
 /**====================================================================================
  [문법 최적화(간소화)]
  - 1) 문맥상에서 parameter 와 return value 타입 추론(Type Inference)
  - 2) Single Expression(한줄)인 경우, return 을 안 적어도 됨(Implicit Return)
  - 3) argument name 을 축약(shorthand Arguments) - 단축인자 => $0, $1
  - 4) trailing Closure 문법: 함수의 마지막 전달 인자(Argument) 클로저로 전달되는 경우, 소괄호를 생략 가능
  ====================================================================================**/
 
/*:
---
* 1. 트레일링(Trailing) 클로저 - 후행 클로저 문법
---
*/

// 1) 클로저를 파라미터로 받는 함수 정의
func closureParamFunction(closure: () -> Void) {
    print("start print")
    closure()
}

closureParamFunction(closure: ) {
    print("소괄호 앞으로 가져오기")
}

closureParamFunction() {
    print("argument label 생략가능")
}

closureParamFunction {
    print("END print")
}

// 예제
// 1) 함수를 파라미터로 받는 함수 정의

func executeClosureFunction(a: Int, b: Int, closure: (Int) -> Void) {
    let c = a + b
    closure(c)
}

executeClosureFunction(a: 100, b: 3) { number in
    print("number: \(number)")
}
/*:
---
* 2. 파라미터 및 생략 등의 간소화
---
*/
// 함수의 정의
func performClosure(param: (String) -> Int) {
    param("Swift")
}

/// 문법 최적화 과정
/// 1) 타입 추론(Type Inference)
performClosure(param: { (str: String) in
    return str.count
})

performClosure(param: { str in
    return str.count
})

performClosure(param: { str in
    str.count
})

performClosure { name in
    let seohyun = "iOS Developer"
    let lengthName: Int = seohyun.count
    return lengthName
}

// 2) 한 줄인 경우, 리턴 생략 가능(Implict Return)
performClosure(param: { str in
    str.count
})


// 3) Argument 이름을 축약(shorthan Argument)
performClosure(param: {
    $0.count
})

// 4) trailing closure
performClosure { $0.count }

/*:
---
* 축약 형태로의 활용
---
*/

let closureType1 = { (param) in
    return param % 2 == 0
}

closureType1(8)

let closureType2 = { $0 % 2 == 0 }

closureType2(3)

let closureType3 = { (a: Int, b: Int) -> Int in
    return a * b
}

print("closureType3: \(closureType3(100, 2))")

let closureType4: (Int, Int) -> Double = { (first, second) in
    return Double(first * second)
}

print("Double Type: \(closureType4(3, 6))")

let closureType5: (String, String) -> Int = { Int($0.count) * Int($1.count) }
// argumnet type 을 지우면 에러가 남

print("multiple Name: \(closureType5("seohyun", "swift"))")
