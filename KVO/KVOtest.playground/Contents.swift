import UIKit

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
