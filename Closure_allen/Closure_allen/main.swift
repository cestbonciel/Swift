//
//  main.swift
//  Closure_allen
//
//  Created by Nat Kim on 2023/12/27.
//

import Foundation



let aClosureType = { print("안녕") }
aClosureType()

let abc = { print("Hello.") }
abc()

func aFunction1(param: String) -> String {
    return param + "!"
}

func aFunction2(name: String) -> String {
    return name + "?!??"
}

// 함수를 변수에 할당가능(변수가 함수를 가리키게 됨)
var a: (String) -> String = aFunction1
a("안녕")

a = aFunction2

a("Bonjour")
a("Swift")
a("Steve Jobs")

func someFunction(num: Int) -> String{
    let strNum = print("number: \(num)")
    return ""
}

someFunction(num: 3)

func multiple(a: Int, b: Int) -> Int {
    let result = a * b
    return result
}

print(multiple(a: 34, b: 2))

let multipleNums = {(a: Int, b: Int) -> Int in
    let result = a * b
    return result
}


print("a * b = \(multipleNums(66, 7))")

let multi: (Int, Int) -> Int = {(a, b) in
    let result = a * b
    return result
}

print(multi(120, 2))

let exam1 = { (str: String) in
    return "Hello, \(str)"
}

let exam2: (String) -> String = { (str) in
    return "Hello, \(str)"
}

let exam3 = {
    print("This is a closure.")
}

// MARK: 타입 생략
let exam4 = { param in
    return param + "!"
}

print(exam1("Seohyun"))
print(exam2("iOS develop, Seohyun"))
exam3()
print(exam4("I've got a job as iOS developer."))


// MARK: closure, Callback Func
func closureParamFunction(custom: () -> Void) {
    print("프린트시작")
    custom()
}
print(type(of: closureParamFunction))

closureParamFunction {
    print("프린트종료")
    print("----")
}

closureParamFunction(custom: { print("실행방법") })

func closureParamFunction2(closure: () -> ()) { // 함수의 형태가 Void
    print(" 프린트시작")
    closure() // 함수를 호출하겠다는 의미로 () 뒤에 붙여야함.
}

func printSwiftFunction() {
    print("프린트 종료 >>> 함수를 출력")
}

let printSwift = { () -> () in
    print("  프린트 종료")
}

//closureParamFunction2(closure: printSwiftFunction)
//closureParamFunction2(closure: printSwift)
closureParamFunction2(closure: {
    print("프린트로 전달하면서 클로저파라미터로 전달")
})

closureParamFunction2(closure: {
    print("프린트 종료1")
    print("프린트 종료2")
})
