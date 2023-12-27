import UIKit

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

let queue = DispatchQueue.global()

queue.async {
    DispatchQueue.main.async {
        // 메인스레드에서 UI 업데이트 등
    }
}

class AnotherClass {
    var closureAction2: (() -> Void)?
    
    init() {
        print("initializer")
    }
    
    func setupClosure() {
        self.closureAction2 = { [weak self] in
            DispatchQueue.global().async {
                self?.doAnotherThing()
            }
        }
    }
    
    func doAnotherThing() {
        print("do another thing.")
    }
    
    deinit {
        print("deinitializer.")
    }
}

var doAsync = AnotherClass()
var doAsync2 = AnotherClass()
doAsync.doAnotherThing()

var assign1 = doAsync2.setupClosure()
var assign2 = doAsync2.setupClosure()
//
//assign1 = nil
//assign2 = nil

