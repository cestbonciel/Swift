//
//  main.swift
//  GCD_DispatchQueue
//
//  Created by Nat Kim on 2024/02/03.
//

import Foundation


// 메인 큐에서 비동기로 실행되는 작업
DispatchQueue.main.async {
    print("메인 큐에서 실행됩니다.")
    
    // UI 업데이트 등의 작업을 수행할 수 있습니다.
    
    // 예외적인 상황을 시뮬레이션하기 위해 강제로 오류를 발생시켜 봅니다.
    let value = try! performMainQueueTask()
    print("Main Queue Task Result: \(value)")
}

func performMainQueueTask() throws -> String {
    // 예외를 발생시키는 상황을 모방합니다.
    throw NSError(domain: "com.example", code: 1, userInfo: nil)
}

