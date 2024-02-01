import UIKit

class Fruit {
    var sort: String {
        get {
            return "과일"
        }
        set(newFruit) {
            print("새 과일:\(newFruit)")
        }
    }
    var quantity = 1
}

class Customer {
    var name = "구매자 성명"
    var price = 10000
}

let mart: [AnyObject] = [Fruit(), Customer()]

// AnyObject 타입의 배열의 mart 에 접근해 하위 속성 값 접근하려고 할때 - 타입 캐스팅이 필요하다
/// AnyObject 는 클래스의 인스턴스값인데 어떤 타입인지 포괄되어 있음으로 타입 캐스팅을 해줘야한다.
(mart[0] as? Fruit)!.sort
var fruits = Fruit()
fruits.sort = "바나나"
