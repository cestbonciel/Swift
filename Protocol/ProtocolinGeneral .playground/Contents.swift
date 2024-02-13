import UIKit

protocol Remote {
    func turnOn() -> String
}

extension String: Remote {
    func turnOn() -> String {
        return self
    }
}

class Device: Remote {
    var name: String = ""
    var hour: Int = 0
    
    func turnOn() -> String {
        let message = "\(name)의 전원을 켜주세요"
        print(message)
        return message
    }
    
    func spendOnTime() -> Int {
        print("\(name)을 \(hour) 시간 사용했습니다.")
        return hour
    }
}

var remoteControl = Device()
remoteControl.name = "에어컨"

remoteControl.turnOn() // 이 부분에서 바로 출력됩니다.

remoteControl.hour = 2
let resultInt: Int = remoteControl.spendOnTime()
print("디바이스 사용 시간: \(resultInt) 시간")
