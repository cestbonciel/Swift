import UIKit
// created 6, Jan, 2024 By Kim Seohyun

// Allen - 1주차 연습문제
let scissor: Int = 0
let rock: Int = 1
let paper: Int = 2

var pickMyOne = Int.random(in: 0...2)
let pickComputerOne = Int.random(in: 0...2)


switch pickComputerOne {
case scissor:
    print("컴퓨터의 선택은 가위입니다.")
case rock:
    print("컴퓨터의 선택은 바위입니다.")
case paper:
    print("컴퓨터의 선택은 보입니다.")
default:
    break
}

if pickMyOne == rock {
    if pickComputerOne == rock {
        print("무승부입니다.")
    } else if pickComputerOne == paper {
        print("당신은 졌습니다.")
    } else if pickComputerOne == scissor {
        print("당신이 이겼습니다.")
    }
} else if pickMyOne == paper {
    if pickComputerOne == rock {
        print("당신이 이겼습니다.")
    } else if pickComputerOne == paper {
        print("무승부입니다.")
    } else if pickComputerOne == scissor {
        print("당신이 졌습니다.")
    }
} else if pickMyOne == scissor {
    if pickComputerOne == rock {
        print("당신이 졌습니다.")
    } else if pickComputerOne == paper {
        print("당신이 이겼습니다.")
    } else if pickComputerOne == scissor {
        print("무승부입니다.")
    }
}

if pickMyOne == pickComputerOne {
    print("무승부입니다.")
} else if pickMyOne == scissor && pickComputerOne == paper {
    print("당신이 이겼습니다.")
} else if pickMyOne == rock && pickComputerOne == scissor {
    print("당신이 이겼습니다.")
} else if pickMyOne == paper && pickComputerOne == rock {
    print("당신이 이겼습니다.")
} else {
    print("당신이 졌습니다.")
}
