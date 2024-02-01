//
//  main.swift
//  Closure_allen
//
//  Created by Nat Kim on 2024/01/14.
//

import Foundation

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

someFunctionWithEscapingClosure {
    completionHandlers.append {
        print("hahaha")
    }
}

print(completionHandlers)


func performGCDClosure(value: @escaping (String) -> ()) {
    var firstValue = "Nat"
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        value(firstValue)
    }
}

performGCDClosure { 문자열 in
    print("출력: \(문자열)")
}
