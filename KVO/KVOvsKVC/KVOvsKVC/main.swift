//
//  main.swift
//  KVOvsKVC
//
//  Created by Nat Kim on 2023/12/01.
//

import Foundation

//MARK: - KVC , KeyPath 예제
class MyObjectToObserve: NSObject {
    @objc dynamic var myDate = NSDate(timeIntervalSince1970:  0)
    func updateDate() {
        myDate = myDate.addingTimeInterval(Double(2 << 30))
    }
}

class MyObserver: NSObject {
    @objc dynamic var objectToObserve: MyObjectToObserve
    var observation: NSKeyValueObservation?
    
    init(object: MyObjectToObserve) {
        objectToObserve = object
        super.init()
        
        observation = observe(
            \.objectToObserve.myDate,
             options: [.old, .new]
        ) { object, change in
            print("myDate changed from: \(change.oldValue!), updated To: \(change.newValue!)")
        }
    }
}

let observed = MyObjectToObserve()
let observer = MyObserver(object: observed)
print(observer)
print(type(of: MyObjectToObserve()))


observed.updateDate()




enum KindOfFood {
    case koreanFood, italianFood, japaneseFood, junkFood
}
class Food: NSObject {
    @objc dynamic var kind: String
    @objc dynamic var flavor: String = ""
    @objc dynamic var plates: Int = 0
    
    override init() {
        self.kind = "koreaFood"
        self.flavor = "Plain"
        self.plates = 2
        
        super.init()
    }
}

var orderFood = Food()

orderFood.kind
orderFood.flavor
orderFood.plates

orderFood.value(forKey: "kind")
orderFood.value(forKey: "flavor")
orderFood.value(forKey: "plates")


orderFood.setValue("sweet", forKey: "flavor")

orderFood.setValue("italianFood", forKey: "kind")
orderFood.setValue("softTexture", forKey: "flavor")
orderFood.setValue(3, forKey: "plates")


