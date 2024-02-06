//
//  SendingString.swift
//  GCD_DispatchQueue
//
//  Created by Nat Kim on 2024/02/03.
//

import Foundation

class SendingString {
    func executeFunction1() {
        DispatchQueue.global().async {
            print("=====전역적으로 사용하려는 함수를 호출해봅니다.====")
        }
    }
    
    func executeFunction2() {
        DispatchQueue.main.async {
            print("=====메인스레드에서 비동기를 실행하는 함수입니다.=====")
        }
    }
}


