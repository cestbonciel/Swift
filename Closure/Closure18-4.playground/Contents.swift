import UIKit

URLSession(configuration: .default).dataTask(with: URL(string: "https://www.apple.com")!) { data, response, error in
    // 데이터 처리하는 코드
}

Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { timer in
    print("\(timer) 뒤에 출력")
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

let vc = ViewController()

//vc.dismiss(animated: false, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
vc.dismiss(animated: false) {
    print("화면 닫는 것을 완료했습니다.")
}

/// completionHandler: - 동작이 완료되고 나서 실행될 무언가의 함수를 정의할 때 사용

//:> 콜백 함수: 함수를 실행하면서, 파라미터로 전달하는 함수
// 주로 함수가 실행된 결과는 콜백 함수로 전달받아 처리하기 때문에


/*:
---
- multiple trailing Closure - Swift 5.3 이후
---
 */

func multipleClosure(
    first: () -> (),
    second: () -> (),
    third: () -> ()) {
    first()
    second()
    third()
}

// Swift 5.3 이전
/// 이전 방식에서는 마지막 클로저만 trailing closure 로 쓸 수 있었음
/// (클로저의 경계에서 코드가 헷갈릴 가능성이 있었음)
multipleClosure(first: {
    print("start 1")
}, second: {
    print("start 2")
}) {
    print("start 3")
}
// Swift 5.3 이후
multipleClosure {
    print("multi closure 1")
} second: {
    print("multi closure 2")
} third: {
    print("multi closure 3")
}

// argument label 생략하는 경우
func multipleClosure2(
    first: () -> (),
    _ second: () -> (),
    third: () -> ()) {
    first()
    second()
    third()
}

// argument label 생략하지 못함
multipleClosure2 {
    print("1")
} _: {
    print("2")
} third: {
    print("3")
}

//UIView.animate(withDuration: <#T##TimeInterval#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
UIView.animate(withDuration: <#T##TimeInterval#>) {
    <#code#>
} completion: { <#Bool#> in
    <#code#>
}

