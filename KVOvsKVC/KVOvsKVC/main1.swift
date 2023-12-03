//
//  KVO.swift
//  KVOvsKVC
//
//  Created by Nat Kim on 2023/12/01.
//

import Foundation

struct SomeModel {
    let name: String
    let age: Int
}

let someModel1 = SomeModel(name: "Tim", age: 60)
let someModel2 = SomeModel(name: "Nat", age: 2)

let res1 = [someModel1, someModel2].map(\.name)
print(res1)

let someModel3: SomeModel? = SomeModel(name: "AppleSeed", age: 50)
let someModel4: SomeModel? = nil

let res2 = [someModel1, someModel2].map(\.name)
//Optional 인 경우 KeyPath \.?. 로 접근
let res3 = [someModel3, someModel4].compactMap(\.?.name)


class Person {
    var age = 1 {
        willSet { print(newValue) }
        didSet { print(oldValue) }
    }
}

