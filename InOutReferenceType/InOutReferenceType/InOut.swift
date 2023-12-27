//
//  main.swift
//  InOutReferenceType
//
//  Created by Nat Kim on 2023/12/12.
//

import Foundation

class MyClass {
    var value: Int

    init(value: Int) {
        self.value = value
    }
}

func modifyClass(_ object: inout MyClass) {
    object.value += 10
}

var myObject = MyClass(value: 5)
modifyClass(&myObject)
print(myObject.value) // 출력 결과: 15

