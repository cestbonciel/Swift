//
//  main.swift
//  AnyObject
//
//  Created by Nat Kim on 2023/12/09.
//

import Foundation

class FloatRef {
    let value: Float
    init(_ value: Float) {
        self.value = value
    }
}

let x = FloatRef(2.3)
let y: AnyObject = x
let z: AnyObject = FloatRef.self
print("value x: \(x)")
print("value y: \(y)")
print("value z: \(z)")

