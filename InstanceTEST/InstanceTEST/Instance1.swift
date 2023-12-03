//
//  main.swift
//  InstanceTEST
//
//  Created by Nat Kim on 2023/12/03.
//

import Foundation

struct Computer {
    var battery: Int = 100
    let manufacturer: String = "Apple"
    
    func saveData() {
        print("데이터를 저장합니다.")
    }
    
    func playVideo() {
        print("영상을 재생합니다.")
    }
}

var myComputer: Computer = Computer()
myComputer.battery = 80
myComputer.manufacturer = "야곰 아카데미"
myComputer.saveData()

var yagomComputer: Computer = Computer()
yagomComputer.battery = 20
yagomComputer.playVideo() 
