import UIKit

protocol Remote {
    func turnOn() -> Self
}

extension String: Remote {
    func turnOn() -> Self {
        return self
    }
}

class Device: Remote {
    var name: String = ""
    var hour: Int = 0
    func turnOn() -> Self {
        print("\(name)의 전원을 켜주세요")
        return self
    }
    
    func spendTime() -> Self {
        print("\(hour)시간 사용했습니다.")
        return self
    }
}


var remoteControl = Device()
remoteControl.name = "에어컨"
remoteControl.turnOn()

remoteControl.hour = 3
remoteControl.spendTime()
