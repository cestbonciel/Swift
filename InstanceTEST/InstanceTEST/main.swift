//
//  main.swift
//  InstanceTEST
//
//  Created by Nat Kim on 2023/12/03.
//

import Foundation

// MARK: - 프로퍼티 기본값
/// 스위프트 모든 인스턴스는 초기화와 동시에
/// 모든 프로퍼티에 유효한 값이 할당되어 있어야 한다
/// 프로퍼티에 미리 기본값을 할당해두면
/// 인스턴스가 생성됨과 동시에 초기값을 지니게 된다.

class PersonA {
    var name: String = "unknown"
    var age: Int = 0
    var nickname: String = "Nat"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 30
jason.nickname = "j"

// MARK: - 이니셜라이저
/// 프로퍼티 기본값을 지정하기 어려운 경우에는
/// 이니셜라이저를 통해
/// 인스턴스가 가져야 할 초기값을 전달할 수 있다

class PersonB {
    var name: String
    var age: Int
    var nickname: String
    
    init(name: String, age: Int, nickname: String) {
        self.name = name
        self.age = age
        self.nickname = nickname
    }
}

let hana: PersonB = PersonB(name: "hana", age: 20, nickname: "하나")

// MARK: 프로퍼티 초기값이 꼭 필요 없을 때
// 옵셔널을 사용!

class PersonC {
    var name: String
    var age: Int
    var nickname: String?
    
    init(name: String, age: Int, nickname: String? = nil) {
        self.name = name
        self.age = age
        self.nickname = nickname
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickname: "m")

/*
 암시적 추출 옵셔널은
 인스턴스 사용에 꼭 필요하지만
 초기값을 할당하지 않고자 할 때 사용
 */

class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다.")
    }
}

let happy: Puppy = Puppy(name: "happy")
// 강아지는 주인없이 산책하면 안됨
// 주인이 없는 상태라 오류 발생
//happy.goOut()
//goOut() 메소드에 Thread 1: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value


happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다.


// MARK: - 실패가능한 이니셜라이저
/*
 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우
 인스턴스 생성에 실패할 수 있다.
 인스턴스 생성에 실패하면 nil을 반환한다.
 그래서 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입이다.
 */

class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, pet: Puppy? = nil, child: PersonC) {
        self.name = name
        self.pet = pet
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name) 에게 \(petName)를 인도합니다.")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됨
// donald 가 jenny 에게 happy 를 인도합니다.

// Try it yourself!

class AirConditioner {
    var kind: String
    let manufacturer: String = "LG"
    var minTemperature: Double
    
    init(kind: String, minTemperature: Double) {
        self.kind = kind
        self.minTemperature = minTemperature
    }
    
    func turnOn() {
        print("\(kind)에어컨은 최저온도 \(minTemperature)입니다.")
    }
}

//var wallAircon = AirConditioner.turnOn(AirConditioner.init(kind: "벽걸이", minTemperature: 18.0))
var wallAircon: AirConditioner = AirConditioner(kind: "벽걸이", minTemperature: 18.0)
wallAircon.turnOn()
