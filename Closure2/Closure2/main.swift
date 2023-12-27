//
//  main.swift
//  Closure2
//
//  Created by Nat Kim on 2023/12/17.
//

import Foundation

class SomeClass {
    var closureAction: (() -> Void)?
    
    func setupClosure() {
        self.closureAction = { [weak self] in
            self?.doSomething()
        }
    }
    
    func doSomething() {
        print("do something")
    }
}


var exam: SomeClass = SomeClass()

exam.setupClosure()

exam.doSomething()
