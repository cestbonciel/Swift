import UIKit

func performEscaping1(closure: @escaping () -> ()) {
    print("프린트 시작")
    closure()
}

/// 원칙적으로 함수의 실행이 종료되면 파라미터로 쓰이는 클로저도 제거됨
/// @escaping 키워드는 클로저를 제거하지 않고 함수에서 탈출시킴(함수가 종료되어도 클로저가 존재하도록 함)
/// => 클로저가 함수의 실행흐름(스택프레임)을 벗어날 수 있도록 함

performEscaping1 {
    print("프린트 중간")
    print("프린트 종료")
}

/// @escaping 대표적 사용
/// 1) 어떤 함수의 내부에서 사용한 클로저(함수)를 외부 변수에 저장
/// 2) GCD (비동기 코드의 사용)

var aSavedFunction: () -> () = { print("출력") }

//aSavedFunction()

func performEscaping2(closure: @escaping () -> ()) {
    aSavedFunction = closure
    // 클로저를 실행하는 것이 아니라 aSavedFunction 변수에 저장
}

aSavedFunction()

performEscaping2 (closure: { print("another print") })

aSavedFunction()

// 또 다른 예제 (GCD 비동기 코드)
func performEscaping1(closure: @escaping (String) -> ()) {
    var name = "서현"
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) { // 1초 뒤 실행
        closure(name)
    }
}

performEscaping1 { name in
    print("이름 출력하기: \(name)")
}

// MARK: - @autoclosure 키워드
/// 함수의 파라미터 중 클로저 타입에 @autoclosure 키워드 붙임
/// 파라미터가 없는 클로저만 가능

func someFunction(closure: @autoclosure () -> Bool) {
    if closure() {
        print("실행합니다.")
    } else {
        print("실행할 수 없습니다.")
    }
}

var num = 1

someFunction(closure: true)
someFunction(closure: num == 0)

/// 일반적으로 클로저를 사용하나 번거로운 경우 사용
/// 번거로움 해결해주지만 실제 코드 명확해지지 않을 수 있음으로 지양(애플공식)
/// 잘 사용하지 않고, 읽기 위한 문법


// autoclosure 는 기본적으로 non-escaping 특성을 가지고 있음
 
// MARK: - 참고) 클로저의 사용법


