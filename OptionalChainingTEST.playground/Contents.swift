import UIKit

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

// MARK: - Optional Chaining
let seohyun: Person? = Person(name: "Seohyun")
let apart: Apartment? = Apartment(dong: "101", ho: "1004")
let joker: Person? = Person(name: "joker")

/// 옵셔널 체이닝이 실행 후 결과값이 nil 일 수 있으므로
/// 결과타입도 옵셔널이다
/// 만약 우리집의 경비원의 직업이 궁금하다면?
/// 옵셔널 체이닝을 사용하지 않는다면
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다.")
                } else {
                    print("우리집 경비원은 직업이 없어요.")
                }
            }
        }
    }
}

guardJob(owner: seohyun)

// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다.")
    } else {
        print("우리집 경비원은 직업이 없어요.")
    }
}

guardJobWithOptionalChaining(owner: seohyun)

seohyun?.home?.guard?.job
seohyun?.home = apart
seohyun?.home
seohyun?.home?.guard = joker
seohyun?.home?.guard
seohyun?.home?.guard?.name
seohyun?.home?.guard?.job
seohyun?.home?.guard?.job = "경비원"
                        
// MARK: nil coalescing operator
var guardJob1: String
guardJob1 = seohyun?.home?.guard?.job ?? "조커"
print(guardJob1)
seohyun?.home?.guard?.job = nil
print(guardJob1)
guardJob1 = seohyun?.home?.guard?.job ?? "배트맨"
print(guardJob1)
