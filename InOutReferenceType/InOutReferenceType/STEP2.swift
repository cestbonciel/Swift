//
//  main.swift
//  InOutReferenceType
//
//  Created by Nat Kim on 2023/12/12.
//

import Foundation

// 커피 종류 열거형
enum Coffee: String {
    case espresso
    case americano
    case cafeLatte
    case cappuccino
    case macchiato
    case cafeMocha
}

// 커피숍 구조체
struct CoffeeShop {
    var sales: Int // 카페의 매출액
    var menu: [Coffee: Int] // 메뉴와 가격
    var pickUpTable: [String] // 픽업 테이블

    // 주문 및 커피 제조 메서드
    mutating func make(_ coffee: Coffee, for name: String) {
        guard let price = menu[coffee] else {
            print("커피 메뉴가 존재하지 않습니다.")
            return
        }

        if price > 0 {
            pickUpTable.append("\(name) 님이 주문하신 \(coffee.rawValue)(이/가) 준비되었습니다. 픽업대에서 가져가주세요.")
            print(pickUpTable.last ?? "")
            sales += price
        }
    }
}

// 고객 타입
struct Person {
    var customer: String
    var money: Int

    // 커피 주문 메서드
    mutating func order(_ coffee: Coffee, of coffeeShop: inout CoffeeShop, by name: String) {
        guard let price = coffeeShop.menu[coffee] else {
            print("커피 메뉴가 존재하지 않습니다.")
            return
        }

        if money >= price {
            coffeeShop.make(coffee, for: name)
            money -= price
        } else {
            let shortageAmount = price - money
            print("잔액이 \(shortageAmount)원만큼 부족합니다.")
        }
    }
}

// 예시
var missKim = Person(customer: "missKim", money: 4000)
var yagomBucks = CoffeeShop(
    sales: 0,
    menu: [
        .americano: 3000,
        .cafeLatte: 4000,
        .cafeMocha: 4500,
        .cappuccino: 4500,
        .macchiato: 5000,
        .espresso: 2800
    ],
    pickUpTable: []
)

missKim.order(.cappuccino, of: &yagomBucks, by: "missKim")
